#!/bin/bash -x
read -p "Enter a number:" n
fact=1
for (( count=1 ; count<=$n ; count++ ))
do
        fact=$(($fact*$count))
done
echo "Factorial:$fact"
