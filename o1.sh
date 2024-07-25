while true
do
echo "1. Create File "
echo "2. Rename file "
echo "3. Remove file "
echo "4. Display file "
echo "5. Create New user "
echo "6. Insert password for new user "
echo "7. Login with new user "
echo "8. Change access rights "
echo "9. EXIT"
echo "Enter your choice "
read ch

case $ch in
1)
echo "enter file name to create"
read f1
cat >$f1
;;

2)
echo "enter file name to rename"
read f
echo "enter new name"
read n
mv $f $n
;;

3)
echo "enter file name to remove"
read f1
rm $f1

;;

4)
echo "enter file name to display"
read f
cat $f
;;

5)
echo "enter user name to add"
read u
sudo useradd $u
;;

6)
echo "enter passward to add for user"
sudo passwd $u
;;

7)
sudo "enter user to login"
read u
sudo login $u
;;

8)
echo "Enter file name "
read f1
echo "Enter username (o,g,u)"
read u1
echo "Do you want to remove or add access (+,-)"
read a1
echo "What access rights do you want to give ? (x,w,r) "
read r1
sudo chmod $u1 $a1 $r1 $f1
ls $f1
;;

9)
exit
;;

esac
done








