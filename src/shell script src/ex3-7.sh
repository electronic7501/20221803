#!/bin/bash

path1=/$1/files.tar

if [ ! -d $1 ]; then
    mkdir $1
    cd $1
    for i in 0 1 2 3 4
    do
        touch file$i.txt
        mkdir file$i        
        ln file$i.txt file$i/file$i.txt

    done
    cd -
fi

exit 0