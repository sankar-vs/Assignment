#!/bin/bash -x
declare -A dice
key=1
total=3
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
min=3
while (( $count1<$total & $count2<$total & $count3<$total & $count4<$total & $count5<$total & $count6<$total))
do
        roll=$(( (RANDOM %6)+1 ))
        dice[$((key++))]=$roll
        case $roll in
                1)
                        (( count1++ ));;
                2)
                        (( count2++ ));;
                3)
                        (( count3++ ));;
                4)
                        (( count4++ ));;
                5)
                        (( count5++ ));;
                *)
                        (( count6++ ));;
        esac
done
counter=0
countArray[((counter++))]="$count1"
countArray[((counter++))]="$count2"
countArray[((counter++))]="$count3"
countArray[((counter++))]="$count4"
countArray[((counter++))]="$count5"
countArray[((counter++))]="$count6"
for (( i=0 ; i<6 ; i++ ))
do
        if (( ${countArray[i]}==3 )); then
                maxDice=$(($i+1))
        fi
        if (( $min>${countArray[i]} )); then
                min=${countArray[i]}
                minDice=$(($i+1))
        fi
done
echo "Dice:${dice[@]}"
echo "Keys:${!dice[@]}"
echo "Max:$maxDice"
echo "Min:$minDice"
