#! /bin/sh
echo "Enter the file name"
read abc
if [ -f /home/intern3/practise/pqr/Assignments/$abc ]
then
    echo "File exist"
	Choice
else
    echo "file does not exit"
fi

Choice()
{
case $num in
 [0-9])
 echo “you have entered a single digit number”
 ;;
 [1-9][1-9])
 echo “you have entered a two-digit number”
 ;;
 [1-9][1-9][1-9])
 echo “you have entered a three-digit number”
 ;;
 *)
 echo “your entry does not match any of the conditions”
 ;;
esac	
