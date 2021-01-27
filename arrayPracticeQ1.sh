#!/bin/bash -x
for (( count=0 ; count<10 ; count++ ))
do
        num[$count]=$(((RANDOM %900)+100))
done
echo ${num[@]}
largest=0
secondLargest=0
smallest=999
secondSmallest=999
for (( count=0 ; count<10 ; count++ ))
do
        if (( $largest<${num[count]} )); then
                secondLargest=$largest
                largest=${num[count]}
        elif (( ${num[count]}>$secondLargest & ${num[count]}!=$largest )); then
                secondLargest=${num[count]}
        fi

        if (( $smallest>${num[count]} )); then
                secondSmallest=$smallest
                smallest=${num[count]}
        elif (( ${num[count]}<$secondSmallest & ${num[count]}!=$smallest ));then
                secondSmallest=${num[count]}
        fi
done
echo "Largest:"$largest
echo "Second Largest:"$secondLargest
echo "Smallest:"$smallest
echo "Second Smallest:"$secondSmallest
