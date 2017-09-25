#!/bin/bash

while true;
do
	REMEDY_CHECK=`pgrep -u root dmlsnr -c`
    if [ "$REMEDY_CHECK" -eq "0"  ]; then
        /opt/serena/dimensions/14.3/cm/prog/dmstartup
    elif [ "$REMEDY_CHECK" -gt "1" ]; then
    	/opt/serena/dimensions/14.3/cm/prog/dmshutdown
    	sleep 30
    	/opt/serena/dimensions/14.3/cm/prog/dmstartup
    fi
    sleep 60
done 
