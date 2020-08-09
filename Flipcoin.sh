#!/bin/bash -x
# code for flip coin simulation problem

echo "code for flip coin simulation"
Head=1
Tail=1
for i in {1..43}
do
	check=$(( RANDOM%2 ))
	if [[ $check -eq 1 ]]
	then
		((Head++))
	else
		((Tail++))
	fi

	if [[ $Head -eq 21 || $Tail -eq 21 ]]
	then
		break
	fi
done

echo "Total Head wons "$Head "time"
echo "Total Tail wons "$Tail "time"

if [[ $Head -gt $Tail ]]
then
	echo "Heads have won by "$(( $Head - $Tail ))
else
	echo "Tails have won by "$(( $Tail - $Head ))
fi
