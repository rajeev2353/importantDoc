site=hea.50hertz.in
website=`curl -s --head $site`
if echo $website | grep "200 OK" > /dev/null
then
#mail -s "hea.50hertz.in site is down" rajeev.r@manikarananalytics.in < /dev/null

echo "The Application server on $site is up!" >> /home/script/email.txt
ssmtp rajeev.r@manikarananalytics.in,rajeev2353@gmail.com < /home/script/email.txt
rm /home/script/email.txt
touch /home/script/email.txt
cp /home/script/email1.txt /home/script/email.txt
else
echo "The Application Server on $site is down or having some issue" >> /home/script/email.txt
#mail -s "hea.50hertz.in site is down" rajeev.r@manikarananalytics.in < /dev/null
ssmtp rajeev.r@manikarananalytics.in,rajeev2353@gmail.com < /home/script/email.txt
rm /home/script/email.txt
touch /home/script/email.txt
cp /home/script/email1.txt /home/script/email.txt

fi

