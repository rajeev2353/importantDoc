#!/bin/bash

###### 1.Global-Forecaster-batch restart job ####
ps -ef | grep  'global-forecast-batch.jar' | grep -v grep > /dev/null
if [ "$?" -ne "0" ]
then
curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9716356803,9560389612&message=global_forecast_batch_STOPPED&sender=MNIKRN"

#sh /root/script/alert/smsalljob.sh
#mail -s "global-forecast-batch.jar stopped" 
#manoj.n@manikarananalytics.in,schedules@manikarananalytics.in,lokendra.s@50hertz.in < /home/jarfail.txt
#cd /home/wind/test/final_files
#cd /home/DEPLOY/WIND/CURRENT/
#nohup java -jar global-forecact-batch.jar &

recycleglobal_import.sh
else
        echo "global-forecast-batch.jar";
fi

###### 2.Scada Import Batch Job #######
ps -ef | grep  'scada-import-batch.jar' | grep -v grep > /dev/null
if [ "$?" -ne "0" ]
then
curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9910032957,9560389612&message=scada_import_batch_STOPPED&sender=MNIKRN"

recyclescada_import.sh
else
        echo "scada-import-batch.jar";
fi

###### 3. Export Foecast Batch Job ########
ps -ef | grep  'export-forecast-batch.jar' | grep -v grep > /dev/null
if [ "$?" -ne "0" ]
then
curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9910032957,9560389612&message=export_forecast_STOPPED&sender=MNIKRN"
recyclexportfcast.sh
else
        echo "export-forecast-batch.jar";
fi

##### 4.Scada Correction Batch Job ########
#ps -ef | grep  'scada-correction-batch.jar' | grep -v grep > /dev/null
#if [ "$?" -ne "0" ]
#then
#curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9910032957,9560389612&message=scada_correction_STOPPED&sender=MNIKRN"
#recyclescdacorrection.sh
#else
#        echo "scada-correction-batch.jar";
#fi

##### 5.Schedule Batch Job ########
ps -ef | grep  'schedule-batch.jar' | grep -v grep > /dev/null
if [ "$?" -ne "0" ]
then
curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9910032957,9560389612&message=schedule_batch_STOPPED&sender=MNIKRN"
recycleschedule.sh
else
        echo "schedule-batch.jar";
fi

##### 6.Solar Scada Batch Job ########
ps -ef | grep  'solar-scada-batch.jar' | grep -v grep > /dev/null
if [ "$?" -ne "0" ]
then
curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9910032957,9560389612&message=solar_scada_batch_STOPPED&sender=MNIKRN"
recyclesolarscada.sh
else
        echo "solar-scada-batch.jar";
fi

##### 7.Wind Batch Job ########
ps -ef | grep  'wind-batch.jar' | grep -v grep > /dev/null
if [ "$?" -ne "0" ]
then
curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9910032957,9560389612&message=wind_batch_STOPPED&sender=MNIKRN"
recyclewindbat.sh
else
        echo "wind-batch.jar";
fi

##### 8.Solar Batch Job ########
ps -ef | grep  'Solar-Batch.jar' | grep -v grep > /dev/null
if [ "$?" -ne "0" ]
then
curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9910032957,9560389612&message=Solar_Batch_STOPPED&sender=MNIKRN"
recyclesolarbat.sh
else
        echo "Solar-Batch.jar";
fi

##### 9.Wind Power prediction Batch Job ########
ps -ef | grep  'wind-power-prediction.jar' | grep -v grep > /dev/null
if [ "$?" -ne "0" ]
then
curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9910032957,9560389612&message=power_prediction_STOPPED&sender=MNIKRN"
recyclepowerprediction.sh
else
        echo "wind-power-prediction.jar";
fi

##### 10.SPFS Forecaster Batch Job ########
ps -ef | grep  'SPFS_Forecaster-1.jar' | grep -v grep > /dev/null
if [ "$?" -ne "0" ]
then
curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9910032957,9560389612&message=SPFS_Forecaster_STOPPED&sender=MNIKRN"
recyclespfsfcast.sh
else
        echo "SPFS_Forecaster-1.jar";
fi

##### 11. SPFS Forecaster Batch Job ########
ps -ef | grep  'SPFS-SCADA-1.jar' | grep -v grep > /dev/null
if [ "$?" -ne "0" ]
then
curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9910032957,9560389612&message=SPFS_SCADA_STOPPED&sender=MNIKRN"
recyclespfsfcast.sh
else
        echo "SPFS-SCADA-1.jar";
fi

##### 11. SPFS Schedule Batch Job ########
ps -ef | grep  'SPFS-Schedule-1.jar' | grep -v grep > /dev/null
if [ "$?" -ne "0" ]
then
curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9910032957,9560389612&message=SPFS_Schedule_STOPPED&sender=MNIKRN"
recyclespfsfcast.sh
else
        echo "SPFS-Schedule-1.jar";
fi

exit

