#!/bin/bash -x
for (( count=0 ; count<10 ; count++ ))
do
        num[$count]=$(((RANDOM %900)+100))
done
echo ${num[@]}
for (( counti=0 ; counti<10 ; counti++ ))
do
        for (( countj=$(($counti+1)) ; countj<10 ; countj++ ))
        do
                if (( ${num[counti]} > ${num[countj]} )); then
                        a=${num[counti]}
                        num[$counti]=${num[countj]}
                        num[$countj]=$a
                fi
        done
done
echo ${num[@]}
echo "Second Largest: "${num[8]}
echo "Second Smallest: "${num[1]}
