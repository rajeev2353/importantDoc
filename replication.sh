     #!/bin/bash

    PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

    #script checking the replication is running or not.

    #If replication is down then sent the alert mail.

    slave_server_hostname=192.168.2.64

    ###check if already notified###

    cd /root

    if [ -f replication_problem.txt ]; then

    rm -rf /root/replication_problem.txt

    exit 1;

    fi

    ###Check if slave running or not?###

    (

    echo “show slave status \G;”

    ) | mysql -u username -h $slave_server_hostname -ppassword 2>&1 | grep “Slave_IO_Running: No”

    if [ “$?” -ne “1” ]; then

    echo “Replication Failed”

    echo “Replication failed” > /root/replication_problem.txt

    fi

    ###Send notification if replication is down###

    cd /root

    if [ -f replication_problem.txt ]; then

    #mail -s “Replication problem” admin@mysqlhost.com < /root/replication_problem.txt

    echo “Problem in replicaition”

    fi 
