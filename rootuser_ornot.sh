#!/bin/bash
<<cmnt
if [[ $(id -u) -eq 0 ]]
 then
	 echo "You are root"

 else
	 echo "You are not root"

 fi
cmnt
userId=$(id -u)
[[ $userId -eq 0 ]] && echo "echo you are root" || echo "echo you are not root"
