#!/bin/bash

echo "$1을 포함한 정보를 찾습니다."
n=0
while read name phone
do

    if [[ "${name}${phone}" == *$1* ]];then
        echo "${name} ${phone}"
        n=$(($n + 1))
    fi

done < DB.txt

if [ $n == 0 ];then
    echo "$1을 포함한 정보가 없습니다."
fi
