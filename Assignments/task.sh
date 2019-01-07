#! /bin/sh
 Starting () ## Starting with Alphabet
{
echo "Enter to find the Staring with a alphabet "
read alpha1
 #grep --color=always -E '\b'$alpha1 $abc
 grep --color=always -E '^'$word1 $abc
}

Ending() ### Ending with Alphabet
{
echo "Enter the Alphabet ending with "
read alpha2
grep --color=always -E $alpha2'\b' $abc
}

Between ()
{
echo "Enter the range of words "
read word1
read word2
grep --color=always -w $word1.*$word2 $abc
}
Firstn() # First n characters of file
{
echo "Enter how many charcters"
read pqr
grep -o '^.\{'$pqr'\}' abc.txt
}
Lastn() #Last n characters of file
{

echo "Enter how many charcters"
read xyz
 grep -o '.\{'$xyz'\}$' abc.txt
}
Choice()
{
    echo "Enter What you have to do With File
	 1)Starting_with  
	 2)Ending_with
	 3)Between_words
	 4)Firstn_characters
	 5)Lastn_characters"
    read val
	if [ $val == Starting_with ]
	 then
	 Starting
	elif [ $val == Ending_with ]
	then 
	Ending
	elif [ $val == Between_words ]
	then
	Between
	elif [ $val == Firstn_characters ]
	then
	Firstn 
	elif [ $val == Lastn_characters ]
	then
	Lastn 
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


	

