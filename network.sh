#!/bin/bash
#Lingasugur
date
cat /home/Rajeev/Desktop/Alert/Lingasugur.txt |  while read output
do
    ping -c 1 "$output" > /dev/null
    if [ $? -eq 1 ]; then
#curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9716356803&message=Lingasugur_Network is up&sender=MNIKRN"
    #echo "node $output is up" 
   # else
    #echo "node $output is down"
curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=954031440,9163536666&message=Lingasugur_Network is down&sender=MNIKRN"
    fi
done

#Chikodi

date
cat /home/Rajeev/Desktop/Alert/Chikodi.txt |  while read output
do
    ping -c 1 "$output" > /dev/null
    if [ $? -eq 1 ]; then
#curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9716356803&message=Chikodi_Network is up&sender=MNIKRN"
    #echo "node $output is up"
 #   else
    #echo "node $output is down"
curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=954031440,9163536666&message=Chikodi_Network is down&sender=MNIKRN"
    fi
done
#Jath-clp
date
cat /home/Rajeev/Desktop/Alert/Jath-clp.txt |  while read output
do
    ping -c 1 "$output" > /dev/null
    if [ $? -eq 1 ]; then
#curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9716356803&message=Jath-clp_Network is up&sender=MNIKRN"
    #echo "node $output is up"
 #   else
    #echo "node $output is down"
curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=954031440,9163536666&message=Jath-clp_Network is down&sender=MNIKRN"
    fi
done
#RON

date
cat /home/Rajeev/Desktop/Alert/RON.txt |  while read output
do
    ping -c 1 "$output" > /dev/null
    if [ $? -eq 1 ]; then
#curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9716356803&message=RON_Network is up&sender=MNIKRN"
    #echo "node $output is up"
 #   else
    #echo "node $output is down"
curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=954031440,9163536666&message=RON_Network is down&sender=MNIKRN"
    fi
done

#Jath-Renew
date
cat /home/Rajeev/Desktop/Alert/Jath-renew.txt |  while read output
do
    ping -c 1 "$output" > /dev/null
    if [ $? -eq 1 ]; then
#curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9716356803&message=Jath-RENEW_Network is up&sender=MNIKRN"
    #echo "node $output is up"
 #   else
    #echo "node $output is down"
curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=954031440,9163536666&message=Jath-RENEW_Network is down&sender=MNIKRN"
    fi
done

#Batakurke
date
cat /home/Rajeev/Desktop/Alert/Batakurke.txt |  while read output
do
    ping -c 1 "$output" > /dev/null
    if [ $? -eq 1 ]; then
#curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=9716356803&message=Jath-RENEW_Network is up&sender=MNIKRN"
    #echo "node $output is up"
 #   else
    #echo "node $output is down"
curl -w -F "http://sms.gngsms.com/api/sendhttp.php?user=manikaran&password=mplcontrol&mobiles=954031440,9163536666&message=Batakurke_Network is down&sender=MNIKRN"
    fi
done

