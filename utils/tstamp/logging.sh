#! /bin/bash

__CUR_DIR=`dirname $0`
__PORT=0

if [ $# -eq 1 ]; then
	__PORT=$1
fi

sudo $__CUR_DIR/tstamp < /dev/ttyUSB$__PORT
