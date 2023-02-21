#!/bin/bash
echo " Welcome to Elden Ring.Choose one of the below characters:"
echo "1-Samurai
2-Prophet
3-The_Great
4-Choose to custom charater!"
read class

case $class in 
	1) 
		HP=20
		attack=10
		type="Samurai"
		;;
	2) 
		HP=30
		attack=20
		type="Prophet"
		;;
	3) 
		HP=40
		attack=30
		type="The_Great"
		;;
	4) 
		echo "Enter your name : "
		read name
		HP= [[ $RANDOM % 40 ]]
		attack= [[ $RANDOM % 30 ]]
		type=$name
		;;
esac

echo "You have chosen the $type ,health is $HP ,attack is $attack"

echo "Entering the First beast battle ...Choose a number between 0-1.(0/1)"
beast=$(( $RANDOM % 2 )
read number
if [[ $RANDOM == $number || $number == 5 ]]; then
	echo " Beast tarnished"
elif [[ $class == 3 ]]; then
	echo "The_Great always wins 1st Beast"
else
	echo " You are tarnsihed"
	exit 1
fi

echo " You have entered level 2 :...second beast arrives ..choose a number from 0-10."
read number
beast=$(( $RANDOM % 10 ))
if [[ $RANDOM == $number || $number == cheat ]]; then
	echo " Beast tarnished"
else
	echo " You are tarnsihed"
	exit 1
fi

echo " you have won the trophy *****"
exit 1
