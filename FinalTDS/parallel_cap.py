from cv2 import *
import time
from TDSlib import *

vc = VideoCapture(0)
vc.set(CAP_PROP_FRAME_WIDTH, 1920)
vc.set(CAP_PROP_FRAME_HEIGHT, 1080)
cap_num = 0

if vc.isOpened(): # try to get the first frame
    rval, frame = vc.read()
else:
    rval = False

start_time = time.time()
while cap_num < 20:
    #imshow("Webcam Feed", frame)
    rval, frame = vc.read()

    if cap_num < 20:
        start_time = time.time()
        imwrite("/home/pi/Desktop/vid_cap/img" + str(cap_num) + ".jpeg", frame)
        end_time = time.time()
        print("Cap time:"+str(end_time-start_time))
        cap_num += 1
        
    if cap_num == 20:
 
        #total_time = end_time-start_time
        #print("Total Time: "+str(total_time))
        #print("Time Per Image: "+str(total_time/cap_num))
        break
            
    key = waitKey(1)
    if key == 27: # exit on ESC
        break

vc.release()
