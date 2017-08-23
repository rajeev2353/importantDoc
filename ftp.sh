#!/bin/bash
HOST=ftp1.globalweathercorp.com
USER=manikaran
PASSWORD=eH2Waek!
 
ftp -inv $HOST <<EOF
user $USER $PASSWORD
cd /incoming
mget * /home/Rajeev/
bye
EOF
