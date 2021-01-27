#!/bin/bash -x
function degF() {
        echo $1 | awk 'END{print $0*(9/5)+32}'
}
function degC() {
        echo $1 | awk 'END{print ($0-32)*(5/9)}'
}
echo "1. Convert Celsius to Fahrenheit"
echo "2. Convert Fahrenheit to Celsius"
read choice
case $choice in
        1)
                read -p "Enter Celsius(0-100): " celsius
                if (( celsius>=0 && celsius<=100 )); then
                        degFahrenheit="$( degF $((celsius)) )"
                else
                        echo "Enter Celsius between 0-100 only"
                fi
                echo "Fahrenheit:"$degFahrenheit;;
        2)
                read -p "Enter Fahrenheit(32-212):" fahrenheit
                if (( fahrenheit>=32 & fahrenheit<=212 )); then
                        degCelsius="$( degC $((fahrenheit)) )"
                else
                        echo "Enter Fahrenheit between 32-212 only"
                fi
                echo $degCelsius;;
        *)
                echo "Invalid Choice";;
esac
