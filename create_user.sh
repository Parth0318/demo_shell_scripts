#! /bin/bash

<<help

tho tho 
tho tho

help

echo "============  creation of user started ============"

read -p "enter the user name: " username

read -p "enter the password: " password


sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "=============   creation of user completed ============"
