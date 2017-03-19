from cv2 import *
import numpy as np
from math import *
import time
from TDSlib import *
import sys

WAIT = 0
ASCENT = 1
DESCENT = 2
LANDING = 3
RECOVERY = 4

cap_num = 0

stateFile = open("state.txt", "r")

while True:
    time.sleep(.05)
    stateFile.seek(0)
    val = stateFile.read(1)
    while(val == '' or val == " "):
        stateFile.seek(0)
        val = stateFile.read(1)
    print(val)
    val = int(val)
    if val == WAIT:
        pass

    if val == ASCENT or val == DESCENT:

        targetsImage = imread("/home/pi/Desktop/vid_cap/img" + str(cap_num) + ".jpeg", 1)

        #If it equals none, that file does not exist yet, so keep waiting for it
        if targetsImage != None:
            time.sleep(2)
            targetsImage = imread("/home/pi/Desktop/vid_cap/img" + str(cap_num) + ".jpeg", 1)
            alt = altitude()
            targetDetection(targetsImage, alt, cap_num)
            imwrite("/home/pi/Desktop/vid_cap/processed/img" + str(cap_num) + ".jpeg", targetsImage)
            imwrite("/media/pi/9464-D88A/proc_img" + str(cap_num) + ".jpeg", targetsImage)
            cap_num += 1
                
            key = waitKey(1)
            if key == 27: # exit on ESC
                break

    if val == LANDING or val == RECOVERY:
        pass
        #COMMENTED OUT FOR DROP TESTING
        print("ending parallel process")
        stateFile.close()
        sys.exit()
        
