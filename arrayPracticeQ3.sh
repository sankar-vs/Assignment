#!/bin/bash -x
counter=0
read -p "Enter a num: " num
n=$num
while (( $n%2==0 ))
do
        primeArray[((counter++))]=2
        n=$(($n/2))
done
for (( count=3 ; count<=$(($n**2)) ; count=$(($count+2)) ))
do
        while (( $n%$count==0 ))
        do
                primeArray[((counter++))]=$count
                n=$(($n/$count))
        done
done
if (($n>2)); then
        primeArray[((counter++))]=$n
fi
echo ${primeArray[@]}
echo ${!primeArray[@]}
