from TDSlib import *
import time

WAIT = 0
ASCENT = 1
DESCENT = 2
LANDING = 3
RECOVERY = 4

while True:
    #val = stateCheck()
    #print(val)
    #time.sleep(2)
    #alt = altitude()
    #print(alt)
    #time.sleep(1.5)
    
    val = stateCheck()
    print("val:",val)
    time.sleep(1)
    
    if val == WAIT:
        print("Wait")
        time.sleep(.2)

    if val == ASCENT or val == DESCENT:
        print("ascent, descent")

    if val == LANDING:
        print("landing")

    if val == RECOVERY:
        print("recovery")
        GPIO.cleanup()
        call("sudo shutdown -h now", shell = True)
