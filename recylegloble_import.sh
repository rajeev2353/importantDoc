#!/bin/bash

kill $(ps -ef | grep 'global-forecast-batch.jar' | awk '{print $2}')

echo "==Batch job is killed ================================"
echo "================ ================================"
echo "==Changing Directory to Batch location ========================"
cd /home/DEPLOY/WIND/CURRENT

echo "==================================== ============"
echo "== Checking batches to be running, if not, then and starting..============"

export JAVA_HOME=/var/java/jdk1.7.0_79/
export PATH=$PATH:/var/java/jdk1.7.0_79/bin

ps -ef | grep  'global-forecast-batch.jar' | grep -v grep > /dev/null
        if [ "$?" -ne "0" ]
                then
                nohup java -jar global-forecast-batch.jar &
                else
                echo "global-forecast-batch.jar Running"
        fi
exit

