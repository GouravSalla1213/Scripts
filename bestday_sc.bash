#!/bin/bash
name=$1
obj=$2

date=$(date)
user=$(whoami)
where=$(pwd)

echo "Hi $name! Good Morning!"
sleep 1
echo "You are doing great today! Keep it going !"
sleep 2
echo "Do you like $obj ?"
echo "You are logged in as $user and  currently at $where directory. Also time is : $date"  
echo "$pwd,$shell,$user,$hostname"
