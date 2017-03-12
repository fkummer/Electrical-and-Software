from TDSlib import *
import time
import sys
import numpy as np
from cv2 import *
import subprocess
from math import *
import RPi.GPIO as GPIO

scm_pin = 5
GPIO.setmode(GPIO.BCM)
GPIO.setup(scm_pin, GPIO.IN, pull_up_down=GPIO.PUD_UP)

vc = VideoCapture(0)
vc.set(CAP_PROP_FRAME_WIDTH, 1920)
vc.set(CAP_PROP_FRAME_HEIGHT, 1080)
cap_num = 0

if vc.isOpened():
    rval, frame = vc.read()
else:
    rval = False

while (True):
    rval, frame = vc.read()
    if (GPIO.input(scm_pin)):
        imwrite("/home/pi/Desktop/vid_cap/img" + str(cap_num) + ".jpeg", frame)
        imwrite("/media/pi/9464-D88A/img" + str(cap_num) + ".jpeg", frame)
        cap_num += 1
    
vc.release()
GPIO.cleanup()
print("done")
#subprocess.call("sudo shutdown -h now", shell = True)

