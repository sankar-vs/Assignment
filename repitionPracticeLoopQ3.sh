#!/bin/bash -x
read -p "Enter a number:" n
isPrime=1
if (( $n==0 )); then
        isPrime=0
else
        for (( count=2 ; count<=$((n/2)) ; ++count ))
        do
        if (( $(($n%$count))==0 )); then
                isPrime=0
                break
        fi
        done
fi
if (( $isPrime==1 )); then
        echo "$n is a Prime Number"
else
        echo "$n is not a Prime Number"
fi
