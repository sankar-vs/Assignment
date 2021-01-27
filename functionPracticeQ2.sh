#!/bin/bash -x
function palindrome() {
        local reverse=0
        num=$1
        while (( $num!=0 ))
        do
                remainder=$(($num%10))
                reverse=$(( ($reverse*10)+$remainder ))
                num=$(($num/10))
        done
        echo $reverse
}
read -p "Enter a number: " number
reversedNumber="$( palindrome $(($number)) )"
if (( $reversedNumber==$number )); then
        echo "The number is a Palindrome number"
else
        echo "The number is not a Palindrome number"
fi
