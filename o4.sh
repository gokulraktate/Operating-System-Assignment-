while true
do
echo "1.list the process"
echo "2.disp info of process"
echo "3.Display the global priority of the process"
echo "4.Change the priority of the process"
echo "5.Kill the process"
echo "6.Exit"
echo "Enter your choice"
read ch
case $ch in

1)
ps
;;

2)
ps -axl
;;

3)
sudo nice
;;

4)
echo "Enter the process id"
read p_id
echo "Enter priority"
read pri
sudo renice $p_id $pri
;;

5)
echo "Enter the process id"
read p_id
kill $p_id
;;

6)
exit
;;
esac
done

