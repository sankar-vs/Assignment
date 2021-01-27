#!/bin/bash -x
function palindrome() {
        local reverse=0
        local num=$1
        while (( $num!=0 ))
        do
                remainder=$(($num%10))
                reverse=$(( ($reverse*10)+$remainder ))
                num=$(($num/10))
        done
        echo $reverse
}
counti=0
for (( count=0 ; count<100 ; count++ ))
do
        num[$count]=$(( (RANDOM %99)+1 ))
        numReversed[$count]="$( palindrome ${num[count]} )"
done
for (( count=0 ; count<100 ; count++ ))
do
        if (( ${num[count]}==${numReversed[count]} )); then
                numRepeated[$((counti++))]=${num[count]}
        fi
done
echo ${num[@]}
echo ${numReversed[@]}
echo ${numRepeated[@]}
