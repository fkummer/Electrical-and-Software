#all the functions to be used in target detection for red objects

import time
from cv2 import *
from subprocess import call
#from picamera import PiCamera


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
