from cv2 import *
import numpy as np
from math import *
import time
from TDSlib import *

cap_num = 0

start_time = 0
while cap_num < 20:

    start_time = time.time()
    targetsImage = imread("/home/pi/Desktop/vid_cap/img" + str(cap_num) + ".jpeg", 1)

    #If it equals none, that file does not exist yet, so keep waiting for it
    while targetsImage == None:
        start_time = time.time()
        targetsImage = imread("/home/pi/Desktop/vid_cap/img" + str(cap_num) + ".jpeg", 1)

    alt = 1
    targetDetection(targetsImage, alt, cap_num)
    imwrite("/home/pi/Desktop/vid_cap/processed/img" + str(cap_num) + ".jpeg", targetsImage)
    end_time = time.time()
    print("Proc Time:"+str(end_time-start_time))

    cap_num += 1
        
    if cap_num == 20:
        #total_time = end_time-start_time
        #print("Process Total Time: "+str(total_time))
        #print("Process Time Per Image: "+str(total_time/cap_num))
        break
            
    key = waitKey(1)
    if key == 27: # exit on ESC
        break
