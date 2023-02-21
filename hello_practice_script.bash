#!/bin/bash
echo "Hello welcome to linux bash scripting" #> file.txt #writes to a file
#cat >> file.txt #appends to a file
echo "-----------Practice if condition-------"
cat << enter
enter the value of count variable 
enter
count=0
read count
if (($count < 10))
then
	echo " $count is less than 10"
elif (($count == 10))
then
	echo "$count is eqal to 10"
elif [ $count -gt 10 ] 
then
	echo "$count is greater than 10"
fi
echo "--------------Practice while loop-------"
while [ $count -le 20 ] 
#(($count < 20))
do	
	echo "$count"
	count=$[count +1]
done

echo "--------------Until Loop----------------"
until [ $count -le 20 ] 
#(($count < 20))
do	
	echo "$count"
	count=$[count +1]
done
echo "................For LOOP................"
for i in {0..20}
do
	echo $i
done

for i in {0..20..2}
do
	echo $i
done

for (( i=0; i<=10 ; i++ ))
do
	echo $i
done
echo "for with if loop"
for (( i=0; i<=10 ; i++ ))
do
	if [ $i -gt 5 ] 
	then
		break
	fi
	echo $i
done

for (( i=0; i<=10 ; i++ ))
do
	if [ $i -eq 5 ] || [ $i -eq 8] 
	then
		continue
	fi
	echo $i
done

echo "=------array arguments-----"
echo $1 $2 $3

args=("$@")
echo ${args[0]} ${args[1]} ${args[2]}
echo $@
echo $#

while read line
do 
	echo "$line"
done < "${1:-/dev/stdin}"



 ls -al 1>file.txt 2>file_error.txt # write stdout to file and sterror to file_error
 ls -al 1>file.txt 2>&1 # write both stfout and std erro to file
 ls -al >&file.txt # write both stfout and std erro to file
 
 echo "------sending one script to another script---pipes"
 