#!/bin/bash
echo "프로그램을 실행합니다."


ls_l(){
    echo "함수 안으로 들어왔음"
    ls -l
}
ls_hl(){
    echo "함수 안으로 들어왔음"
    ls -hl
}
ls_F(){
    echo "함수 안으로 들어왔음"
    ls -F
}
ls_(){
    echo "함수 안으로 들어왔음"
    ls
}

if [ $# -eq 0 ];then
    ls_
elif [ $1 == "-l" ];then
    ls_l
elif [ $1 == "-hl" ];then
    ls_hl
elif [ $1 == "-F" ];then
    ls_F
else
    ls
fi

echo "프로그램을 종료합니다."


exit 0
