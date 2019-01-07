sort_word()
{
    cat $abc | tr " " "\n" | sort | tr "\n" " ";
    echo
}
sort_line()
{
    sort $abc
}

count_word()
{
	wc $abc
}
reverse_word()
{
 wc -r $abc
}

 Starting () ## Starting with Alphabet
{
echo "Enter to find Staring with a alphabet "
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

Choice()
{
    echo "Enter What you have to do With File
	 1)sort_word 
	 2)sort_line 
	 3)word_count
	 4)Reverse_sort
	 5)Starting_with  
	 6)Ending_with"

    read val
    if [ $val == sort_word ]
    then
        sort_word
    elif [ $val == sort_line ]
    then
        sort_line
	elif [ $val == word_count ]
	then
	count_word
	elif [ $val == Reverse_sort ]
	then
	reverse_word
	elif [ $val == Starting_with ]
	 then
	 Starting
	elif [ $val == Ending_with ]
	then 
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


	
