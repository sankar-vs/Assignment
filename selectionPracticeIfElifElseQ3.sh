#!/bin/bash
read -p "Enter a number (1, 10, 100, 1000…): " num
if (( ($num==1) )); then
                echo "Ones Unit"
elif (( ($num==10) )); then
                echo "Tens Unit"
elif (( ($num==100) )); then
                echo "Hundreds Unit"
elif (( ($num==1000) )); then
                echo "Thousands Unit"
elif (( ($num==10000) )); then
                echo "Ten Thousands Unit"
elif (( ($num==100000) )); then
                echo "Lakhs Unit"
elif (( ($num==1000000) )); then
                echo "Millions Unit"
elif (( ($num==10000000) )); then
                echo "Crores Unit"
elif (( ($num==100000000) )); then
                echo "Hundred Millions Unit"
elif (( ($num==1000000000) )); then
                echo "Billions Unit"
else
	    echo "Not a Valid Unit"
fi
