while true
do
echo "1.create dir"
echo "2.remove"
echo "3.working dir"
echo "4.change working dir"
echo "5.node details"
echo "6.exit"
echo "enter ch"
read ch

case $ch in
1)

echo "enter the name of directory "
read ss
mkdir $ss 

;;

2)
echo "enter the name of directory to remove "
read r
	if [ -z "$( ls -A $r)" ] 
	then 
	echo "Directory is empty "
	rmdir $r                 # Remove the empty directory 
	else 
	echo "Directory iss  not empty "
	ls $r
        rm -r $r
fi

;;

3)
echo "the current working dir is"
pwd

;;

4)
echo "enter the path of dir to chnge"
read a

cd $a

;;

5)
 echo " enter name of directry "
   read re
   stat $re       # display file or file system status 
   
;;

6)
exit

;;

esac
done

