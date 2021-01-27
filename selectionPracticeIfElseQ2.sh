# considering the month to be in between March and June and the date to be 20th from the question not the year 2020.
#!/bin/bash -x
read -p "Enter Date:" date
read -p "Enter Month:" month
if (( ($month<=6 & $month>= 3) & ($date<=20) )); then
        echo "True"
elif (( ($month>=3 & $month<=5) & ($date<31) )); then
        echo "True"
elif (( ($month==3 | $month==5) & ($date==31) )); then
        echo "True"
else
        echo "False"
fi
