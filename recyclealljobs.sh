#!/bin/sh

kill $(ps -ef | grep 'global-forecast-batch.jar' | awk '{print $2}')

kill $(ps -ef | grep 'wind-batch.jar' | awk '{print $2}')

kill $(ps -ef | grep 'wind-power-prediction.jar' | awk '{print $2}')

#kill $(ps -ef | grep 'scada-import-batch.jar' | awk '{print $2}')

kill $(ps -ef | grep 'SPFS-SCADA-1.jar' | awk '{print $2}')

kill $(ps -ef | grep 'schedule-batch.jar' | awk '{print $2}')

#kill $(ps -ef | grep 'export-forecast-batch.jar' | awk '{print $2}')

kill $(ps -ef | grep 'Solar-Batch.jar' | awk '{print $2}')

kill $(ps -ef | grep 'solar-scada-batch.jar' | awk '{print $2}')

kill $(ps -ef | grep 'SPFS_Forecaster-1.jar' | awk '{print $2}')

kill $(ps -ef | grep 'SPFS-Schedule-1.jar' | awk '{print $2}')

kill $(ps -ef | grep 'spfs_ftp-1.jar' | awk '{print $2}')

echo "==All batch jobs are killed ================================"
echo "================ ================================"
echo "==Changing Directory to Batch location ========================"
cd /home/DEPLOY/WIND/CURRENT

#export JAVA_HOME=/var/java/jdk1.7.0_79/
#export PATH=$PATH:/var/java/jdk1.7.0_79/bin

echo "==================================== ============"
echo "== Checking batches to be running, if not, then and starting..============"

ps -ef | grep  'global-forecast-batch.jar' | grep -v grep > /dev/null
	if [ "$?" -ne "0" ]
		then
		nohup java -jar global-forecast-batch.jar &
		else
		echo "global-forecast-batch.jar Running"
	fi

ps -ef | grep  ' wind-batch.jar' | grep -v grep > /dev/null
	if [ "$?" -ne "0" ]
		then
		nohup java -jar  wind-batch.jar &
		else
        	echo " wind-batch.jar Running"
	fi

ps -ef | grep  'wind-power-prediction.jar' | grep -v grep > /dev/null
	if [ "$?" -ne "0" ]
		then
		nohup java -jar wind-power-prediction.jar &
		else
        	echo "wind-power-prediction.jar Running"
	fi


ps -ef | grep  'schedule-batch.jar' | grep -v grep > /dev/null
	if [ "$?" -ne "0" ]
		then
		nohup java -jar schedule-batch.jar &
		else
        echo "schedule-batch.jar Running"
	fi


ps -ef | grep  'Solar-Batch.jar' | grep -v grep > /dev/null
	if [ "$?" -ne "0" ]
		then
		nohup java -jar Solar-Batch.jar &
		else
       		echo "Solar-Batch.jar Running"
	fi

ps -ef | grep  'solar-scada-batch.jar' | grep -v grep > /dev/null
	if [ "$?" -ne "0" ]
		then
		nohup java -jar solar-scada-batch.jar &
		else
        	echo "solar-scada-batch.jar Running"
	fi

echo "changing path to solar batches "
cd /home/DEPLOY/SOLAR/CURRENT
echo "Path changed"

ps -ef | grep  'SPFS_Forecaster-1.jar' | grep -v grep > /dev/null
        if [ "$?" -ne "0" ]
                then
                nohup java -jar SPFS_Forecaster-1.jar &
                else
                echo "SPFS_Forecaster-1.jar Running"
        fi


ps -ef | grep  'SPFS-Schedule-1.jar' | grep -v grep > /dev/null
        if [ "$?" -ne "0" ]
                then
                nohup java -jar SPFS-Schedule-1.jar &
                else
                echo "SPFS-Schedule-1.jar Running"
        fi

ps -ef | grep  'SPFS-SCADA-1.jar' | grep -v grep > /dev/null
        if [ "$?" -ne "0" ]
                then
                nohup java -jar SPFS-SCADA-1.jar &
                else
                echo "SPFS-SCADA-1.jar Running"
        fi

ps -ef | grep  'spfs_ftp-1.jar' | grep -v grep > /dev/null
        if [ "$?" -ne "0" ]
                then
                nohup java -jar spfs_ftp-1.jar &
                else
                echo "spfs_ftp-1.jar Running"
        fi

exit
