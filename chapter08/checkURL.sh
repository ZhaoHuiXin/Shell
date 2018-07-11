#!/bin//bash
check(){
        wget --spider -q -o /dev/null --tries=1 -T 5 $1 #<==指定超时时间
        if [ $? -eq 0 ];then
                echo "$1 is ok"
        else
                echo "$1 is fail"
        fi
}
check $1
