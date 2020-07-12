#uc1 Simulator start with Flipping a Cointo Display Heads or Tails as winner

declare -A coin
	echo "${coin[@]}"

toss=$((RANDOM%2))

if [[ $toss -eq 0 ]]; then
	echo "Heads"
else
	echo "Tails"
fi
