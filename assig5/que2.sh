#!/bin/bash

while true
do
echo "1. date:"
echo "2.cal:"
echo "3.enter ls:"
echo "4.enter pwd:"
echo "5.exit"

echo  "enter your choice:" 
read choice

case $choice in 
1) echo "enter date is :$d"
;;
2) echo "enter cal:y "
cal -y
;;
3) echo  "list ls: "
ls
;;
4) echo "enter Pwd: $pwd "

;;
5) echo "exit"
   break
   ;;
   *)
   echo "invalid choice"
   ;;
esac


done
