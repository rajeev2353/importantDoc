#!/bin/bash
trigger=0.01
load=`cat /proc/loadavg | awk '{print $1}'`
response=`echo | awk -v T=$trigger -v L=$load 'BEGIN{if ( L > T){ print "greater"}}'`
if [[ $response = "greater" ]]
then
#echo "Load average is $load"
curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9716356803&message='Load average is $load'_STOPPED&sender=MNIKRN"
#echo "Load average is $load"

#sar -q | echo "Load Average is very high - [ $load ]"
fi

