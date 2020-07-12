#!/bin/bash

declare -A coin
	echo "${coin[@]}"
echo "Player1 (Heads) and Player2 (Tails)."
read -p "Enter your call 0(Heads) and 1 (Tails):" choice

i=0
while [[ $((coin['Heads'])) -lt 21 || $((coin['Tails'])) -lt 21 ]]; do
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
	echo "Its a Draw, lets toss some more times."
	i=0
	while [[ $(( $((coin['Heads']))-$((coin['Tails'])) )) -lt 2 && $(( $((coin['Tails']))-$((coin['Heads'])) )) -lt 2 ]];
	do
		toss=$((RANDOM%2))
		if [[ $toss -eq 0 ]]; then
			coin['Heads']=$((coin['Heads'] + 1))
		else
			coin['Tails']=$((coin['Tails'] + 1))
		fi
		((i++))
	done
	if [[ $((coin['Heads'])) -gt $((coin['Tails'])) && $choice -eq 0 ]]; then
		echo "Player1 won by $(($((coin['Heads']))-$((coin['Tails'])))) tosses."
	elif [[ $((coin['Heads'])) -gt $((coin['Tails'])) && $choice -eq 0 ]]; then
		echo "Player1 won by $(($((coin['Heads']))-$((coin['Tails'])))) tosses."
	elif [[ $((coin['Heads'])) -gt $((coin['Tails'])) && $choice -eq 1 ]]; then
		echo "Player1 won by $(($((coin['Heads']))-$((coin['Tails'])))) tosses."
	elif [[ $((coin['Tails'])) -gt $((coin['Heads'])) && $choice -eq 0 ]]; then
		echo "Player2 won by $(($((coin['Tails']))-$((coin['Heads'])))) tosses."
	else
		echo "Player2 won by $(($((coin['Tails']))-$((coin['Heads'])))) tosses."
	fi
elif [[ $((coin['Heads'])) -gt $((coin['Tails'])) && $choice -eq 0 ]]; then
	echo "Player1 won by $(($((coin['Heads']))-$((coin['Tails'])))) tosses."
elif [[ $((coin['Heads'])) -gt $((coin['Tails'])) && $choice -eq 1 ]]; then
	echo "Player1 won by $(($((coin['Heads']))-$((coin['Tails'])))) tosses."
elif [[ $((coin['Tails'])) -gt $((coin['Heads'])) && $choice -eq 0 ]]; then
	echo "Player2 won by $(($((coin['Tails']))-$((coin['Heads'])))) tosses."
else
	echo "Player2 won by $(($((coin['Tails']))-$((coin['Heads'])))) tosses."
fi