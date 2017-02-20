from cv2 import *
import numpy as np
from subprocess import call
import spidev
import RPi.GPIO as GPIO
from math import *
import time
from TDSlib import *
#from picamera import PiCamera


scm_pin = 5
GPIO.setmode(GPIO.BCM)
GPIO.setup(scm_pin, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)

spi = spidev.SpiDev()
spi.open(0,0)
spi.max_speed_hz = 500000
to_send = 0

imgNum = 0
#namedWindow("Webcam Feed")
vc = VideoCapture(0)
vc.set(CAP_PROP_FRAME_WIDTH, 1920)
vc.set(CAP_PROP_FRAME_HEIGHT, 1080)

if vc.isOpened(): # try to get the first frame
    rval, frame = vc.read()
else:
    rval = False
    
cap_num = 0
start_time = time.time()
while rval:
    #imshow("Webcam Feed", frame)
    rval, frame = vc.read()

    if cap_num < 20:
        imwrite("/home/pi/Desktop/vid_cap/img" + str(cap_num) + ".jpeg", frame)
        cap_num += 1
        if cap_num == 20:
            end_time = time.time()
            total_time = end_time-start_time
            print("Total Time: "+str(total_time))
            print("Time Per Image: "+str(total_time/cap_num))
            break
            
    key = waitKey(1)
    if key == 27: # exit on ESC
        break

vc.release()
#destroyWindow("Webcam Feed")

start_time = time.time()
while imgNum < 20:
    #call("fswebcam -r 1920x1080 /home/pi/Desktop/fullScale/img" + str(imgNum) + ".jpeg", shell=True)
    targetsImage = imread("/home/pi/Desktop/vid_cap/img" + str(imgNum) + ".jpeg", 1)
    alt = 1
    targetDetection(targetsImage, alt, imgNum)
    imwrite("/home/pi/Desktop/vid_cap/processed/img" + str(imgNum) + ".jpeg", targetsImage)
    imgNum +=1

end_time = time.time()
total_time = end_time-start_time
print("Processing Total Time: "+str(total_time))
print("Processing Time Per Image: "+str(total_time/cap_num))
'''
    if ((GPIO.input(scm_pin))):
        call("fswebcam -r 1920x1080 /home/pi/Desktop/fullScale/img" + str(imgNum) + ".jpeg", shell=True)
        targetsImage = imread("/home/pi/Desktop/fullScale/img" + str(imgNum) + ".jpeg", 1)
        alt = altitude()
        targetDetection(targetsImage, alt, imgNum)
        imwrite("/home/pi/Desktop/fullScale/processed/img" + str(imgNum) + ".jpeg", targetsImage)
        imgNum +=1

cap.release()
destroyAllWindows()
'''


    



        
    
    

    
