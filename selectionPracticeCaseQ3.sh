#!/bin/bash -x
read -p "Enter a number (1, 10, 100, 1000...): " num
case $num in
        1)
                echo "Ones Unit";;
        10)
                echo "Tens Unit";;
        100)
                echo "Hundreds Unit";;
        1000)
                echo "Thousands Unit";;
        10000)
                echo "Ten Thousands Unit";;
        100000)
                echo "Lakhs Unit";;
        1000000)
                echo "Millions Unit";;
        10000000)
                echo "Crores Unit";;
        100000000)
                echo "Hundred Millions Unit";;
        1000000000)
	    echo "Billions Unit";;
        *)
            echo "Not a Valid Unit";;
esac
