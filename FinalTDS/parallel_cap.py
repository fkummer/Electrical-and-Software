from cv2 import *
import time
from TDSlib import *
import spidev
import RPi.GPIO as GPIO
from math import *
from subprocess import call
import sys

WAIT = 0
ASCENT = 1
DESCENT = 2
LANDING = 3
RECOVERY = 4

scm_pin = 5
GPIO.setmode(GPIO.BCM)
GPIO.setup(scm_pin, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)

vc = VideoCapture(0)
vc.set(CAP_PROP_FRAME_WIDTH, 1920)
vc.set(CAP_PROP_FRAME_HEIGHT, 1080)
cap_num = 0
land_num = 0

if vc.isOpened(): # try to get the first frame
    rval, frame = vc.read()
else:
    rval = False
    
clearBuffer()
stateFile = open("/home/pi/Electrical-and-software/FinalTDS/state.txt", "w")
while True:
    time.sleep(.05)
    val = stateCheck()
    stateFile.seek(0)
    stateFile.write(str(val))

    if val == WAIT:
        pass

    if val == ASCENT or val == DESCENT:
        rval, frame = vc.read()

        if (GPIO.input(scm_pin)):
            imwrite("/home/pi/Desktop/vid_cap/img" + str(cap_num) + ".jpeg", frame)
            imwrite("/media/pi/9464-D88A/img" + str(cap_num) + ".jpeg", frame)
            cap_num += 1
            picAck()
            
        key = waitKey(1)


    if val == LANDING:
        rval, frame = vc.read()

        if (GPIO.input(scm_pin)):
            imwrite("/home/pi/Desktop/vid_cap/landing/img" + str(land_num) + ".jpeg", frame)
            imwrite("/media/pi/9464-D88A/landing/img" + str(land_num) + ".jpeg", frame)
            land_num += 1
            picAck()

    if val == RECOVERY:
        stateFile.seek(0)
        stateFile.write(" ")
        vc.release()
        GPIO.cleanup()
        stateFile.close()
        call("sudo shutdown -h now", shell = True)
