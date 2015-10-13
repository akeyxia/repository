#! /bin/bash

__PORT=0

if [ $# -eq 1 ]; then
	__PORT=$1
fi

stty -F /dev/ttyUSB$__PORT speed 115200 -parenb -cstopb cread clocal -crtscts
