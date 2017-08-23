#!/bin/bash
mstatus=`/etc/init.d/mongod status`

if /etc/init.d/mongod status | grep "running"
then
echo "service running"
else
echo "service status is $mstatus and now trying to restart"

sh /home/Rajeev/Desktop/Ranjan/office/script/mongodb.sh
curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9716356803&message=MongoD Service Restarted&sender=MNIKRN" &> /dev/null

fi
