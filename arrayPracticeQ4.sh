#!/bin/bash -x
read -p "Enter the length of the array(>5): " length
for (( count=0 ; count<length ; count++ ))
do
        read -p "Enter element: " num[$count]
done
echo ${num[@]}
for (( counti=0 ; counti<$(($length-2)) ; counti++ ))
do
        for (( countj=$(($counti+1)) ; countj<$(($length-1)) ; countj++ ))
        do
                for (( countk=$(($countj+1)) ; countk<$length ; countk++ ))
                do
                        if (( $((${num[counti]}+${num[countj]}+${num[countk]}))==0 )); then
                                echo -n ${num[counti]}
                                echo -n ${num[countj]}
                                echo -n ${num[countk]}
                                echo
                                found=1
                        fi
                done
        done
done
if (( $found==0 )); then
        echo "Sum of Three integers adds to ZERO did not exists"
fi
