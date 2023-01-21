echo "Welcome to Flip Coin Simulation Problem"

headCount=0
tailCount=0
totalTarget=21
flips=0
minDiff=2

while(( 1 ))
do
	(( flips++ ))
	echo -n "Flip number $flips is "
        counter=$(( RANDOM%2 ))
        if(( counter == 0 ))
        then
        	echo "Head"
        	(( headCount++ ))
        else
        	echo "Tail"
   		(( tailCount++ ))
	fi

	if(( headCount >= totalTarget || tailCount >= totalTarget ))
        then
        	break
        fi
done
echo "The Head count is $headCount and Tail Count is $tailCount"

if(( headCount > tailCount ))
then
	echo "Head won by $(( headCount - tailCount ))"
elif(( tailCount > headCount ))
then
	echo "Tail won by $(( tailCount - headCount ))"
fi

if(( headCount == tailCount ))
then
	while((1))
	do
	diff1=$(( headCount - tailCount ))
	diff2=$(( tailCount - headCount ))

	if(( headCount == totalTarget && diff1 >= minDiff ))
    	then
        	echo "Head won by $diff1 points"
        	break

    	elif(( tailCount == totalTarget && diff2 >= minDiff ))
    	then
        	echo "Tail won by $diff2 points"
        	break
    	fi
	done
fi
