#! /bin/sh
 
Starting()
{
echo "Enter the alphabet to find pattern "
	read val1
	grep --color=always -E '\b'$val1 $abc	
}
Ending()
{
	echo "Enter the pattern to want to find "
	read val2
	grep --color=always -E $val2'\b' $abc
}
Choice()
{
	echo "Enter yur choice 
		1) To find Starting with of yur choice :a
		2) To find partern :b "
		read val
	if [ $val == a ] then
	Starting

	 elif [ $val == b ] then 
	Ending
	
fi
 }	
echo "Enter the file name"
read abc
if [ -f $abc ]
then
    echo "File exist"
	Choice
else
    echo "file does not exit"
fi

