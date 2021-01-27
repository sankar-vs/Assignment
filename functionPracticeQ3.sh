#!/bin/bash -x
function primenumber() {
        local n=$1
        local isPrime=1
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
                echo 1
        else
                echo 0
        fi
}

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
read -p "Enter a number: " number
prime="$( primenumber $(($number)) )"
if (($prime==1)); then
        reversedNumber="$( palindrome $(($number)) )"
        reversedPrime="$( primenumber $(($reversedNumber)) )"
        if (( $reversedPrime==1 )); then
                echo "The number and its Palindrome is a Prime Number"
        else
                echo "The number is a Prime Number and its Palindrome is not a Prime number"
        fi
fi
