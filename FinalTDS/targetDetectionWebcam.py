from cv2 import *
import numpy as np
from subprocess import call
import spidev
import RPi.GPIO as GPIO
from math import *
import time
#from picamera import PiCamera


scm_pin = 5
GPIO.setmode(GPIO.BCM)
GPIO.setup(scm_pin, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)

spi = spidev.SpiDev()
spi.open(0,0)
spi.max_speed_hz = 500000
to_send = 0

def colorMaskThreshold(color):

    if color == "yellow": # hsv = [25, 255, 255]
        lowerMask = np.array([21,230,230])
        upperMask = np.array([26,255,255])
        
        
    elif color == "blue": #hsv = [109, 255, 91]
        lowerMask = np.array([80,90,80])
        upperMask = np.array([140,255,255])
        
    else: #red color --> hsv = [170, 241, 166]
        lowerMask = np.array([140,200,130])
        upperMask = np.array([200,255,175])

    return lowerMask, upperMask

def colorThreshold(color):
    upperThreshold = 255

    if color == "yellow":
        lowerThreshold = 128
        
    elif color == "blue":
        lowerThreshold = 10

    else: #color == red 
        lowerThreshold = 50

    return lowerThreshold, upperThreshold

def convert2BW(targetsImage, imgNum):
    hsv = cvtColor(targetsImage, COLOR_BGR2HSV)

    lowerMaskYellow, upperMaskYellow = colorMaskThreshold("yellow")
    lowerMaskBlue, upperMaskBlue = colorMaskThreshold("blue")
    lowerMaskRed, upperMaskRed = colorMaskThreshold("red")

    lowerYellow, upperYellow = colorThreshold("yellow")
    lowerBlue, upperBlue = colorThreshold("blue")
    lowerRed, upperRed = colorThreshold("red")

    mask = inRange(hsv, lowerMaskYellow, upperMaskYellow)
    resYellow = bitwise_and(targetsImage, targetsImage, mask = mask)
    greyYellow = cvtColor(resYellow, COLOR_BGR2GRAY)
    ret, imgBWY = threshold(greyYellow, lowerYellow, upperYellow, THRESH_BINARY)
    
    
    mask = inRange(hsv, lowerMaskBlue, upperMaskBlue)
    resBlue = bitwise_and(targetsImage, targetsImage, mask = mask)
    greyBlue = cvtColor(resBlue, COLOR_BGR2GRAY)
    ret, imgBWB = threshold(greyBlue, lowerBlue, upperBlue, THRESH_BINARY)

    mask = inRange(hsv, lowerMaskRed, upperMaskRed)
    resRed = bitwise_and(targetsImage, targetsImage, mask = mask)
    greyRed = cvtColor(resRed, COLOR_BGR2GRAY)
    ret, imgBWR = threshold(greyRed, lowerRed, upperRed, THRESH_BINARY)

    #imshow("res", resRed + resYellow + resBlue)

    #imshow("bw", imgBWR)

    imwrite("/home/pi/Desktop/fullScale/color/imgInColor" + str(imgNum) + ".jpeg", resBlue + resYellow + resRed)

    imwrite("/home/pi/Desktop/fullScale/color/img" + str(imgNum) + ".jpeg", imgBWY + imgBWB + imgBWR)


    return imgBWY + imgBWB + imgBWR

def convert2Edged(imgBW):
    filtered = GaussianBlur(imgBW, (7,7), 0)

    edged = Canny(filtered, 50, 150)

    #imshow("edged", edged)

    return edged    

def drawTargets(edged, targetsImage, alt):
    ret, thresh = threshold(edged, 127, 255, 0)
    image, contours, hierarchy = findContours(thresh, RETR_TREE, CHAIN_APPROX_SIMPLE)

    for c in contours:
        index = 0
        peri = arcLength(c,True)
        approx = approxPolyDP(c, 0.03 * peri, True)
        area = contourArea(c)
        tarp = tarpPixelArea(alt)
        #if (area == 0):
         #   index+=1
          #  continue
        #if abs(1 - (tarp/area)) < .5 : 
         #  index +=1
          # continue
    
        if len(approx) >= 2 and len(approx) <= 5:
           drawContours(targetsImage, [approx] , index, (0,255,0), 1)

        index +=1
    return

def targetDetection(targetsImage, alt, imgNum):
    imBW = convert2BW(targetsImage, imgNum)
    edged = convert2Edged(imBW)
    drawTargets(edged, targetsImage, alt)

    return

def altitude():
    global to_send
    alt_lsb = spi.xfer2([to_send])
    alt_msb = spi.xfer2([to_send])
    to_send = to_send + 0x01
    test_combo = 0
    test_combo = (test_combo | alt_msb[0]) << 8
    test_combo = test_combo | alt_lsb[0]

    return test_combo
                
def tarpPixelArea(alt):
    VFOV = 43.3
    HFOV = 70.42


    alpha = radians(HFOV/2.0)
    beta = radians(VFOV/2.0)

    Lh = 2*alt*sin(alpha)
    Lv = 2*alt*sin(beta)


    area = Lh * Lv
    print(area)

    totalPixels = 1920*1080
    
    if area != 0:
        pixelsPerSquareFoot = totalPixels / area
    else:
        pixelsPerSquareFoot = 0
        
    #CHANGE TARP AREA
    tarpArea = 20*30 * pixelsPerSquareFoot

    return tarpArea


imgNum = 0
#cap = cv2.VideoCapture(0)
#cap = VideoCapture(0)

c=1




namedWindow("Webcam Feed")
vc = VideoCapture(1)


if vc.isOpened(): # try to get the first frame
    rval, frame = vc.read()
else:
    rval = False
    
cap_num = 0
start_time = time.time()
while rval:
    imshow("Webcam Feed", frame)
    rval, frame = vc.read()

    if cap_num < 100:
        imwrite("/home/pi/Desktop/vid_cap/img" + str(cap_num) + ".jpeg", frame)
        cap_num += 1
        if cap_num == 100:
            end_time = time.time()
            total_time = end_time-start_time
            print("Total Time: "+str(total_time))
            print("Time Per Image: "+str(total_time/cap_num))
            
    key = waitKey(1)
    if key == 27: # exit on ESC
        break

vc.release()
destroyWindow("Webcam Feed")

while True:

    call("fswebcam -r 1920x1080 /home/pi/Desktop/fullScale/img" + str(imgNum) + ".jpeg", shell=True)
    targetsImage = imread("/home/pi/Desktop/fullScale/img" + str(imgNum) + ".jpeg", 1)
    alt = 1
    targetDetection(targetsImage, alt, imgNum)
    imwrite("/home/pi/Desktop/fullScale/processed/img" + str(imgNum) + ".jpeg", targetsImage)
    imgNum +=1

    if ((GPIO.input(scm_pin))):
        call("fswebcam -r 1920x1080 /home/pi/Desktop/fullScale/img" + str(imgNum) + ".jpeg", shell=True)
        targetsImage = imread("/home/pi/Desktop/fullScale/img" + str(imgNum) + ".jpeg", 1)
        alt = altitude()
        targetDetection(targetsImage, alt, imgNum)
        imwrite("/home/pi/Desktop/fullScale/processed/img" + str(imgNum) + ".jpeg", targetsImage)
        imgNum +=1

cap.release()
destroyAllWindows()


    



        
    
    

    
