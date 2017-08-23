#!/bin/bash

##################For WIND PROJECT##################################

###### 1.Global-Forecaster-batch restart job ####
cd /home/BUILD/WIND/CURRENT
ps -ef | grep  'global-forecast-batch.jar' | grep -v grep > /dev/null
        if [ "$?" -ne "0" ]
                then
		echo " Global-Forcast-Batch Jar file not working"
#curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9716356803&message=global_forecast_batch_STOPPED&sender=MNIKRN"
                nohup java -jar global-forecast-batch.jar &
                else
                echo "global-forecast-batch.jar is Running"
        fi
exit

###### 2.Wind-batch restart job ####
cd /home/BUILD/WIND/CURRENT
ps -ef | grep  'wind-batch.jar' | grep -v grep > /dev/null
        if [ "$?" -ne "0" ]
                then
		echo "wind-batch.jar is not running";
#curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9716356803&message=global_forecast_batch_STOPPED&sender=MNIKRN"
                nohup java -jar wind-batch.jar &
                else
        
	echo "wind-batch.jar is running";
fi

exit

######.export-forecast-batch Job#################
#cd /home/BUILD/WIND/CURRENT

#ps -ef | grep  'export-forecast-batch.jar' | grep -v grep > /dev/null
#        if [ "$?" -ne "0" ]
#                then
#		 echo " export-forecast batch Jar file not working"
#curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9716356803&message=global_forecast_batch_STOPPED&sender=MNIKRN"
#                nohup java -jar export-forecast-batch.jar &
#                else
        
#        echo "export-forecast-batch.jar is running";
#fi

#exit

#######4.Solar-Batch Job#######################
cd /home/BUILD/WIND/CURRENT
ps -ef | grep  'Solar-Batch.jar' | grep -v grep > /dev/null
        if [ "$?" -ne "0" ]
                then
		 echo " Solar-Batch Jar  not working"
#curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9716356803&message=global_forecast_batch_STOPPED&sender=MNIKRN"

                nohup java -jar Solar-Batch.jar &
                else

        echo "Solar-Batch.jar is running";
fi

exit
##########5.Solar-Scada-Batch Job###################
cd /home/BUILD/WIND/CURRENT
ps -ef | grep  'solar-scada-batch.jar' | grep -v grep > /dev/null
        if [ "$?" -ne "0" ]
                then
		echo " solar-scada-batch Jar  not working"
#curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9716356803&message=global_forecast_batch_STOPPED&sender=MNIKRN"
                nohup java -jar solar-scada-batch.jar &
                else

        echo "solar-scada-batch jar is running";
fi

exit
#######6.wind-power-prediction Batch Job#################
cd /home/BUILD/WIND/CURRENT
ps -ef | grep  'wind-power-prediction.jar' | grep -v grep > /dev/null
        if [ "$?" -ne "0" ]
                then
		 echo " wind-power-prediction.jar  not working"
#curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9716356803&message=global_forecast_batch_STOPPED&sender=MNIKRN"
                nohup java -jar wind-power-prediction.jar &
                else

        echo "wind-power-prediction.jar is running";
fi

exit
#########7.schedule-batch Job#################
cd /home/BUILD/WIND/CURRENT
ps -ef | grep  'schedule-batch.jar' | grep -v grep > /dev/null
        if [ "$?" -ne "0" ]
                then
		 echo " schedule-batch.jar  not working"
#curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9716356803&message=global_forecast_batch_STOPPED&sender=MNIKRN"
                nohup java -jar schedule-batch.jar &
                else

        echo "schedule-batch.jar is running";
fi

exit
#########8.scada-import-batch Job#######################
cd /home/BUILD/WIND/CURRENT
ps -ef | grep  'scada-import-batch.jar' | grep -v grep > /dev/null
        if [ "$?" -ne "0" ]
                then
		 echo " scada-import-batch.jar  not working"
#curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9716356803&message=global_forecast_batch_STOPPED&sender=MNIKRN"

                nohup java -jar scada-import-batch.jar &
                else

        echo "scada-import-batch.jar is running";
fi

exit
##############Solar Project#####################

#########9.spfs_ftp-1. Batch Job####################
cd /home/BUILD/SOLAR/CURRENT
ps -ef | grep  'spfs_ftp-1.jar' | grep -v grep > /dev/null
        if [ "$?" -ne "0" ]
                then
		echo " spfs_ftp-1.jar  not working"
#curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9716356803&message=global_forecast_batch_STOPPED&sender=MNIKRN"
                nohup java -jar spfs_ftp-1.jar &
                else

        echo "spfs_ftp-1.jar is running";
fi

exit
########10.SPFS-Schedule-1 Batch Job#################
cd /home/BUILD/SOLAR/CURRENT
ps -ef | grep  'SPFS-Schedule-1.jar' | grep -v grep > /dev/null
        if [ "$?" -ne "0" ]
                then
		 echo " SPFS-Schedule-1.jar  not working"
#curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9716356803&message=global_forecast_batch_STOPPED&sender=MNIKRN"
                nohup java -jar SPFS-Schedule-1.jar &
                else

        echo "SPFS-Schedule-1.jar is running";
fi

exit
#######11.SPFS-SCADA-1 Batch Job##########################
cd /home/BUILD/SOLAR/CURRENT
ps -ef | grep  'SPFS-SCADA-1.jar' | grep -v grep > /dev/null
        if [ "$?" -ne "0" ]
                then
		 echo " SPFS-SCADA-1.jar  not working"
#curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9716356803&message=global_forecast_batch_STOPPED&sender=MNIKRN"

                nohup java -jar SPFS-SCADA-1.jar &
                else

        echo "SPFS-SCADA-1.jar is running";
fi

exit
########12.SPFS_Forecaster-1.Batch Job#########################
cd /home/BUILD/SOLAR/CURRENT
ps -ef | grep  'SPFS_Forecaster-1.jar' | grep -v grep > /dev/null
        if [ "$?" -ne "0" ]
                then
		 echo " SPFS_Forecaster-1.jar  not working"
#curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9716356803&message=global_forecast_batch_STOPPED&sender=MNIKRN"

                nohup java -jar SPFS_Forecaster-1.jar &
                else

        echo "SPFS_Forecaster-1.jar is running";
fi

exit




