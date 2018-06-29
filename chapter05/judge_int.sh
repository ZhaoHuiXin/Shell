#!/bin/sh
#<==通过reaad读入持续等待输入的例子
while true 
do
    read -p "Pls input: " a
    expr $a + 0 >/dev/null 2>&1
    [ $? -eq 0 ] && echo int || echo chars
done

