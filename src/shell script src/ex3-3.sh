#!/bin/sh
h=$(($2 * $2))
bmi1=$(expr $1 \* 10000)
bmi=`echo "$bmi1 / $h" | bc` 
a=18.5
b=23

if [ 1 -eq "$(echo "${bmi} >= ${a}" | bc)" ]
then
	if [ 1 -eq "$(echo "${bmi} < ${b}" | bc)" ]
	then
		echo "정상체중입니다."
	fi
fi
if [ 1 -eq "$(echo "${bmi} < ${a}" | bc)" ]
then
	echo "저체중입니다."
fi
if [ 1 -eq "$(echo "${bmi} >= ${b}" | bc)" ]
then
	echo "과체중입니다."
fi

exit 0