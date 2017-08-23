 #!/bin/bash

   # Msg="curl -w -F http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9716356803&message=Mysql_Replication_Failed&sender=MNIKRN"
   # Msg1="curl -w -F http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9716356803&message=Mysql_Replication_working&sender=MNIKRN"
   # emails="rajeev.r@manikarananalytics.in" #multiple emails space separated
   # DownSubject="Replication status - Down"
   # GoodSubject="Replication status - Good"
    SQLresponse=`mysql -u root --password=admin@123 zabbix -e "show slave status\G;" |grep -i "Slave_SQL_Running"|gawk '{print $2}'`
    #IOresponse=`mysql -u root --password=admin@123 zabbix -e "show slave status\G;" |grep -i "Slave_IO_Running"|gawk '{print $2}'`

        if [ "$SQLresponse" = "No" ]; then
        #if [ "$IOresponse" = "No" ]; then
                curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9716356803&message=Mysql_Replication_Failed&sender=MNIKRN"

#curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9716356803&message=Mysql_Replication_Failed&sender=MNIKRN"
                else
                curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9716356803&message=Mysql_Replication_Working&sender=MNIKRN"
#curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9716356803&message=Mysql_Replication_Working&sender=MNIKRN"
fi

