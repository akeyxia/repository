#! /bin/bash

stty -F /dev/ttyUSB0 speed 115200 -parenb -cstopb cread clocal -crtscts
