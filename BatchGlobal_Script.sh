#!/bin/bash

###### 1.Global-Forecaster-batch restart job ####
ps -ef | grep  'global-forecast-batch.jar' | grep -v grep > /dev/null
if [ "$?" -ne "0" ]
then
   echo " Global-Forcast-Batch Jar file not working"
#curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9716356803&message=global_forecast_batch_STOPPED&sender=MNIKRN"

recylegloble_import.sh
else
        echo "global-forecast-batch.jar";
fi

