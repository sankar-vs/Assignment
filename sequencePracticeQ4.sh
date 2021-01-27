#/bin/bash -x
#Q4. Write a program that reads 5 Random 2 Digit  values, then find their sum and their average.

for (( count=1 ; count<=5 ; count++ ))
do
        random=$(((RANDOM %90)+10))
        sum=$(($sum+$random))
done
echo "Sum:$sum"
echo "Avg:"$(($sum/5))

n1=$(((RANDOM %90)+10))
n2=$(((RANDOM %90)+10))
n3=$(((RANDOM %90)+10))
n4=$(((RANDOM %90)+10))
n5=$(((RANDOM %90)+10))
sum=$(($n1+$n2+$n3+$n4+$n5))
echo "Sum:$sum"
echo "Avg:"$(($sum/5))
