#!/bin/bash
if [[ $(id -u) -ne 0 ]]
then 
	echo "You are not allow to run this script"
	exit 1
#Hear exit 1 apply because upper if condition run then exit script 
fi
 	
read -p "Enter your option:" option
if [[ $option == start ]]
then
	echo "Starting apache..."
	systemctl start apache2
elif [[ $option == stop ]]
then
	echo "Stopping apache..."
	systemctl stop apache2
elif [[ $option == restart ]]
then
	echo "Restart apache ..."
	systemctl restart apache2
elif [[ $option == version ]]
then
	version=$(apache2 -v | head -1 | awk '{print $3}' | cut  -d "/" -f 2)
	echo "The version of apache is: $version"
else
	echo "You option is invalid"
	echo " Valid option are: start stop restart and version"
fi


