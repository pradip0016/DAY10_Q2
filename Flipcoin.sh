#!/bin/bash -x
# code for flip coin simulation problem

echo "code for flip coin simulation"
Head=0
Tail=0
function Dice ()
{
case $1 in
	1)
	 	((Head++))
		;;
	0)
    		((Tail++))
		;;
	esac
}


for i in {1..43}
do
Dice $(( RANDOM%2 ))

if [[ $Head -eq 21  &&  $Tail -eq 21 ]]
	then
		for i in {1..3}
		do
		Dice $(( RANDOM%2 ))
		done
		if [[ $(( $Head - $Tail )) -eq 2 ]]
			then
				echo "Head Won!!"
				exit
			elif [[ $(( $Tail - $Head )) -eq 2 ]]
			then
				echo "Tail Won!!"
				exit
		fi

elif [[ $Head -eq 21 || $Tail -eq 21 ]]
then
		if [ $Head -gt $Tail ]
                then
                echo "Heads have won by "$(( $Head - $Tail ))
                elif [ $Tail -gt $Head ]
                then
                echo "Tails have won by "$(( $Tail - $Head ))
                exit
                fi
fi
done
