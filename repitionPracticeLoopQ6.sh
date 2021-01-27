#!/bin/bash -x
read -p "Enter a num: " num
n=$num
while (( $n%2==0 ))
do
        echo 2
        n=$(($n/2))
done
for (( count=3 ; count<=$(($n**2)) ; count=$(($count+2)) ))
do
        while (( $n%$count==0 ))
        do
                echo $count
                n=$(($n/$count))
        done
done
if (($n>2)); then
        echo $n
fi
