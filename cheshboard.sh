#!/bin/bash


for (( i=1; i<=8; i++ ))
do 
	for (( j=1; j<=8; j++ ))
	do
	total=$((  $i + $j ))
	tmp=$(( $total %2))


	if [ $tmp -eq 0 ]
	then
	echo -e -n "\e[47m  \e[0m"
else
	echo -e -n "\e[40m  \e[0m"
	fi
done
echo ""
done

