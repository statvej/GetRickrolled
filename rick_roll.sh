echo "What is the desired link?"
read link
echo "How many times repeat it?(inf for infinity)"
read count
echo "What would be a reapiting frase?(leave empty for nothing)"
read frase

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
