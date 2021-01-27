#!/bin/bash -x
read -p "Enter a number:" num
isPrime=1
for (( n=2 ; n<=num ; n++ ))
do
if (( $n==0 )); then
        isPrime=0
else
        for (( count=2 ; count<=$((n/2)) ; ++count ))
        do
        if (( $(($n%$count))==0 )); then
                isPrime=0
                break
        else
                isPrime=1
        fi
        done
fi
if (( $isPrime==1 )); then
        echo $n
fi
done
