    #!/bin/bash
    # Originally from http://lists.mysql.org/replication/1672
    # Checks MySQL Replication status. Sends user(s) a notification of status
    status=0
    MasterHost="192.168.2.60"
    SlaveHost="127.0.0.1"
    emails="rajeev.r@manikarananalytics.in" #multiple emails space separated
    DownSubject="Replication status - Down"
    GoodSubject="Replication status - Good"
    GoodMessage="Everything regarding MySQL replication on $SlaveHost is good.nHave a great day!nn"
    #Grab the lines for each and use Gawk to get the last part of the string(Yes/No)
    SQLresponse=`mysql -u root --password=admin@123 zabbix -e "show slave status G" |grep -i "Slave_SQL_Running"|gawk '{print $2}'`
    IOresponse=`mysql -u root --password=admin@123 zabbix -e "show slave status G" |grep -i "Slave_IO_Running"|gawk '{print $2}'`
    if [ "$SQLresponse" = "No" ]; then
    error="Replication on the slave MySQL server($SlaveHost) has stopped working.nSlave_SQL_Running: Non"
    status=1
    fi
    if [ "$IOresponse" = "No" ]; then
    error="Replication on the slave MySQL server($SlaveHost) has stopped working.nSlave_IO_Running: Non"
    status=1
    fi
    # If the replication is not working
    if [ $status = 1 ]; then
    for address in $emails; do
    echo -e $error | mail -s "$DownSubject" $address
    echo "Replication down, sent email to $address"
    done
    fi
    # If the replication is working fine
    if [ $status = 0 ]; then
    for address in $emails; do
    echo -e $GoodMessage | mail -s "$GoodSubject" $address
    echo "Replication is up, still sent email to $address"
    done
    fi
