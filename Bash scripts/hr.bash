#!/bin/bash
read N;
i=0;
until [ $i -eq $N ]
do
 i=$((i+1 ));
 read num;
 sum=$((sum+num ));
 #echo $sum;
done
printf "%.3f \n" $(echo " $sum/$N " | bc -l)