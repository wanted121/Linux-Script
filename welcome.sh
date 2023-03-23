#!/bin/bash
echo "Welcome to first  Linux Script"

echo "I am your personal Assistant ans"
if [ $# -eq 0 ]; then
	read -p "Enter username  " username
	read -p "Enter Password " -s  user_password
	read -p "Enter Password again " -s user_password_check
	if [ "$user_password" !=  "$user_password_check" ]; then
		echo -e  "\n${0}:Password do not match!"
		exit 1
	fi
else
	username="$1"
	user_password="${2:-Password1}"
fi
echo -e "\n$username $user_password"
