#!/usr/bin/env bash

#This script is a game to guess only the number of files in the current directory

success=0;
answer=$( cat ./README.md | egrep "Number of files" | egrep -o "[0-9]+" )
echo "Try guess the number of files in $PWD"
while [[ success -eq 0 ]]
do
	read response
	if [[ $response=~[0-9]+ ]]
	then
		if [[ $response -gt $answer ]]
		then
			echo "Try again with a lesser guess"
		elif [[ $response -lt $answer ]]
		then
			echo "Try again with a greater guess"
		else
			echo "Correct! the number of files in $PWD is $answer"
			let success=1
		fi
	else
		echo "Please try with a number"
	fi
done	