#!/bin/bash -x
# code for flip coin simulation problem

echo "code for flip coin simulation"
Head=1
Tail=1
for i in {1..10}
do
	check=$(( RANDOM%2 ))
	if [[ $check -eq 1 ]]
	then
		((Head++))
	else
		((Tail++))
	fi
done
echo "Total Head wons "$Head "time"
echo "Total Tail wons "$Tail "time"
