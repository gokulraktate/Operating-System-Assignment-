#write a shell script to determine the period for which a specific user is logged in on system
echo "enter the login name of user"
read u
tu=`who | awk '{print $1}' | cut -d ":" -f1`
if [ "$tu" = "$u" ]
then 
t1=`date "+%H"`
t2=`date "+%M"`
t3=`who | awk '{print $4}' | cut -d ":" -f1`
t4=`who | awk '{print $4}' | cut -d ":" -f2`
t5=`expr $t1 - $t3`
t6=`expr $t2 - $t4`

echo "Login time for $u Hrs:$t5 Min:$t6"

else
echo "Invalid user"
fi
