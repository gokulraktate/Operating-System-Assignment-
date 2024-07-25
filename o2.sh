while true 
do
echo "1. list of USB Devices"
echo "2. list of PCI Devices"
echo "3. list of CPU Devices"
echo "4. Mount FIle"
echo "5. Unmount File"
echo "6. Exit"
echo "Enter your Choice : "
read ch

case $ch in
1)
lsusb
;;

2)
lspci
;;

3)
lscpu
;;

4)
echo "enter source to mount"
read s
echo "enter destination"
read d
sudo mount $s $d
;;

5)
echo "enter path to unmount(/mnt)"
read d
sudo unmount $d
;;

6)
exit
;;

esac
done
