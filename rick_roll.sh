echo "You can always skip with ENTER to get default joke"
echo "What is the desired link?"
read link
if [ -z "$link" ]
then
	link="https://www.youtube.com/watch?v=dQw4w9WgXcQ"
fi
echo "How many times repeat it?(inf for infinity)"
read count
if [ -z "$count" ]
then
	count=inf
fi
echo "What would be a reapiting frase?(leave empty for nothing)"
read frase
if [ -z "$frase" ]
then
	frase="get rick rolled"
fi

if ($count -eq inf)
then
    for (( ; ; ))
    do
        open $link
        say $frase
    done
    
else
    for ((i = 0; i < $count; i++))
    do
        open $link
        say $frase
    done
fi
