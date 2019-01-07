
#! /bin/sh
 
echo -e "Enter the name of the file : \c"
read file_name
 
if [ -f $file_name ]
then
	echo "$file_name exists and Sorted data of file:"
	sort $file_name
	echo "Words in the file are as follows:"
	wc -l $file_name
	echo "Reverse order of the  file contents "
	#wc -r $file_name
  else
  echo "$file_name not exists do you want to creat a new file? (y/n)"
	
fi
