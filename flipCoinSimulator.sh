#uc1 Simulator start with Flipping a Cointo Display Heads or Tails as winner

declare -A coin
	echo "${coin[@]}"

#uc2 Loop through Multiple times of flipping a coin and show number of times head and tail has won
read -p "Enter 0 for Heads and 1 for Tails:" choice

i=0
while [[ $i -lt 50 ]]; do
	toss=$((RANDOM%2))
	if [[ $toss -eq 0 ]]; then
		coin['Heads']=$((coin['Heads'] + 1))
	else
		coin['Tails']=$((coin['Tails'] + 1))
	fi
	((i++))
done

echo "Keys:   ${!coin[@]}"
echo "Values: ${coin[@]}"

if [[ $((coin['Heads'])) -eq $((coin['Tails'])) ]]; then
	echo "It is a draw."
elif [[ $((coin['Heads'])) -gt $((coin['Tails'])) && $choice -eq 0 ]]; then
	echo "You Won."
else
	echo "You Lost."
fi