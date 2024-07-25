#write a shell program to convert all lower case into upper case and upper  case into lower case in a file
while true 
do 
echo "Menu"
echo "1.Lower to Upper"
echo "2.Upper to Lower"
echo "3.exit"
echo "enter your choice:"
read ch

case $ch in

1)
 echo "Enter file Name"
 read f1
 if [ -f $f1 ]
 then 
  tr '[a-z]' '[A-Z]' <$f1
 else 
  echo "$f1 doesnt exits...."
 fi
;;

2)
 echo "Enter file Name"
 read f2
 if [ -f $f2 ]
 then 
  tr '[A-Z]' '[a-z]' <$f2
 else 
  echo "$f2 doesnt exits...."
 fi
;;

3)
  echo "EXIT...."
  exit
;;

esac
done
