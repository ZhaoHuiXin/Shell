#!/bin/bash
# this script is created by MaxZhao
# zhaohuixin@autoforce.net
read -p "Pls input a number : " num
case "${num}" in
        1)
                echo "the num you input is 1"
                ;;
        2)
                echo "the num you input is 2"
                ;;
        [3-9])  #<==范围匹配的正则写法
                echo "the num you input is ${num}"
                ;;
        *)
                echo "Pls input [1-9] int."
esac
exit
