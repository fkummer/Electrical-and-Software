from cv2 import *
import numpy as np
from math import *
import spidev
import time


spi = spidev.SpiDev()
spi.open(0,0)
spi.max_speed_hz = 500000

def colorMaskThreshold(color):

    if color == "yellow": # hsv = [25(20), 255, 255]
        lowerMask = np.array([20,20,100])
        upperMask = np.array([50,255,255])
        
        
    elif color == "blue": #hsv = [109, 255, 91]
        lowerMask = np.array([80,90,80])
        upperMask = np.array([140,255,255])
        
    else: #red color --> hsv = [170, 241, 166]
        lowerMask = np.array([140,50,130])
        upperMask = np.array([200,255,255])

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
    hsv = cvtColor(targetsImage, COLOR_BGR2HSV) #converts target image into hsv
    #creates the mask ranges for each color
    lowerMaskYellow, upperMaskYellow = colorMaskThreshold("yellow")
    lowerMaskBlue, upperMaskBlue = colorMaskThreshold("blue")
    lowerMaskRed, upperMaskRed = colorMaskThreshold("red")
    
    lowerYellow, upperYellow = colorThreshold("yellow")
    lowerBlue, upperBlue = colorThreshold("blue")
    lowerRed, upperRed = colorThreshold("red")
    #checks bit by bit if the image contains the colors in the range of the mask
    mask = inRange(hsv, lowerMaskYellow, upperMaskYellow)#the part of the photo which matches the color is identified
    resYellow = bitwise_and(targetsImage, targetsImage, mask = mask) # compares the images and applies the mask using an and function
    greyYellow = cvtColor(resYellow, COLOR_BGR2GRAY) #converts to grey scale
    ret, imgBWY = threshold(greyYellow, lowerYellow, upperYellow, THRESH_BINARY) #
    
    
    mask = inRange(hsv, lowerMaskBlue, upperMaskBlue)
    resBlue = bitwise_and(targetsImage, targetsImage, mask = mask)
    greyBlue = cvtColor(resBlue, COLOR_BGR2GRAY)
    ret, imgBWB = threshold(greyBlue, lowerBlue, upperBlue, THRESH_BINARY)

    mask = inRange(hsv, lowerMaskRed, upperMaskRed)
    resRed = bitwise_and(targetsImage, targetsImage, mask = mask)
    greyRed = cvtColor(resRed, COLOR_BGR2GRAY)
    ret, imgBWR = threshold(greyRed, lowerRed, upperRed, THRESH_BINARY)


    imwrite("/home/pi/Desktop/vid_cap/color/imgInColor" + str(imgNum) + ".jpeg", resBlue + resYellow + resRed)
    imwrite("/home/pi/Desktop/vid_cap/color/imgGrey" + str(imgNum) + ".jpeg", greyYellow + greyBlue + greyRed)
    imwrite("/home/pi/Desktop/vid_cap/color/img" + str(imgNum) + ".jpeg", imgBWY + imgBWB + imgBWR)

    resultArr = [resBlue, resYellow, resRed, imgBWY, imgBWB, imgBWR]
    return resultArr

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
    resultArr = convert2BW(targetsImage, imgNum)
    imBW = resultArr[3] + resultArr[4] +resultArr[5]
    edged = convert2Edged(imBW)
    drawTargets(edged, targetsImage, alt)

    return

def altitude():
    to_send = 5
    alt_lsb = spi.xfer2([to_send])
    alt_msb = spi.xfer2([to_send])
    test_combo = 0
    test_combo = (test_combo | alt_msb[0]) << 8
    test_combo = test_combo | alt_lsb[0]

    return test_combo

def stateCheck():
    to_send = 6
    count = 0
    spi.xfer2([to_send])
    time.sleep(.05)
    stateVal = spi.xfer2([1])
    '''
    prevState = [-1]
    while( count < 7):
        #print(stateVal)
        if(stateVal[0] != prevState[0]):
            count = 0
        else:
            count += 1
        prevState[0] = stateVal[0]
        stateVal = spi.xfer2([to_send])
        time.sleep(.03)
        '''
    
    return stateVal[0]
    
def picAck():
    to_send = 7
    stateVal = spi.xfer2([to_send])
    return stateVal[0]

def clearBuffer():
    to_send = 0
    x = 0
    while(x < 20):
        spi.xfer2([to_send])
        x = x + 1
         
def tarpPixelArea(alt):
    VFOV = 43.3
    HFOV = 70.42


    alpha = radians(HFOV/2.0)
    beta = radians(VFOV/2.0)

    Lh = 2*alt*sin(alpha)
    Lv = 2*alt*sin(beta)


    area = Lh * Lv
    #print(area)

    totalPixels = 1920*1080
    
    if area != 0:
        pixelsPerSquareFoot = totalPixels / area
    else:
        pixelsPerSquareFoot = 0
        
    #CHANGE TARP AREA
    tarpArea = 20*30 * pixelsPerSquareFoot

    return tarpArea
