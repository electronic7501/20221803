#!/bin/bash


if [ ! -d $1 ]; then
    mkdir $1
    cd $1
    for i in 0 1 2 3 4
    do
        touch file$i.txt
    done

    mkdir files
    tar cvf files.tar file0.txt file1.txt file2.txt file3.txt file4.txt

    tar xvf files.tar -C ./files/
    mv files.tar files
    cd -
fi

exit 0

