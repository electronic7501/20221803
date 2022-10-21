#!/bin/bash

echo "리눅스가 재미있나요? (yes/no)"
read answer
TorF="F"

case $answer in
    yes | y | Y | Yes | YES)
        echo "yes"
        TorF="T"
esac

case $answer in
    no | n | N | nono | nonono | NO)
        echo "no"
        TorF="T"
esac

if [ $TorF == "F" ]
then
    echo "yes or no로 입력해 주세요."
fi

exit 0