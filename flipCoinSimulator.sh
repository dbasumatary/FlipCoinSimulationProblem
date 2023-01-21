echo "Welcome to Flip Coin Simulation Problem"

read -p "Enter the nuber of times to toss the coin: " x
headCount=0
tailCount=0

for(( i = 1; i <= x; i++ ))
do
	flip=$(( RANDOM%2 ))
	if(( flip == 0 ))
	then
        	echo "Flip number $i - Head"
        	(( headCount++ ))
	else
        	echo "Flip number $i - Tail"
        	(( tailCount++ ))
	fi
done
echo "The Head count is $headCount and Tail Count is $tailCount"
if(( headCount > tailCount ))
then
    echo "The winner is Heads"
elif(( tailCount > headCount ))
then
    echo "The winner is Tails"
else
    echo "There is no winner. It is a tie"
fi
