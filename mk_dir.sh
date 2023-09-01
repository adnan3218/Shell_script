#!/bin/bash
#dir_name="my_directory"
#mkdir $dir_name
 read -p "Enter your dir name :" dir_name
 echo "$dir_name"

 if mkdir $dir_name 2>/dev/null
 then
     echo "$dir_name is created successfull"
else
	echo "$dir_name is alrady created"

fi

