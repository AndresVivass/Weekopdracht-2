#!bin/bash

myintarray=(1 4 8 16 32)
echo "${myintarray[4]}"
myintarray[5]=64
echo "${myintarray[5]}"

echo "================"

for i in ${myintarray[@]}
do
echo "$i"

done

echo "================"

#printf "Input Number: "
#read NUMBER

#((RESULT=$NUMBER+$NUMBER))
#echo "Result: $RESULT"

echo "================"

function timestwo{
(($2=$1*2))
<exit>
}

readf NUMBER
timestwo $NUMBER RESULT
echo "Result: $RESULT"



echo "================"
