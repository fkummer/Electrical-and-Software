import time
import sys
import spidev
import RPi.GPIO as GPIO

scm_pin = 5
#TODO: ADD GPIO READ SUPPORT
GPIO.setmode(GPIO.BCM)
GPIO.setup(scm_pin, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)

spi = spidev.SpiDev()
spi.open(0,0)
spi.max_speed_hz = 500000
to_send = 0x00
try:
        while True:
                if GPIO.input(scm_pin):
                        raw_input("It's High! Transfer!")
                else:
                        raw_input("It's Low! Woweeeeee!")
                        
                print "Transferring..."
                #Arduino sends altitude, LSB first
                alt_lsb = spi.xfer2([to_send])
                print alt_lsb
                alt_msb = spi.xfer2([to_send])
                print alt_msb
                to_send = to_send + 0x01

                test_combo = 0
                test_combo = (test_combo | alt_msb[0]) << 8
                test_combo = test_combo | alt_lsb[0]
                print test_combo
                print bin(test_combo)
                
except KeyboardInterrupt:
        spi.close()
import sys
import spidev

spi = spidev.SpiDev()
spi.open(0,0)
spi.max_speed_hz = 500000
to_send = 0x00
try:
        while True:
                raw_input("Press any key to transfer")
                print "Transferring..."
                #Arduino sends altitude, LSB first
                alt_lsb = spi.xfer2([to_send])
                print alt_lsb
                alt_msb = spi.xfer2([to_send])
                print alt_msb
                to_send = to_send + 0x01

                test_combo = 0
                test_combo = (test_combo | alt_msb[0]) << 8
                test_combo = test_combo | alt_lsb[0]
                print test_combo
                print bin(test_combo)
                
except KeyboardInterrupt:
        spi.close()
        
