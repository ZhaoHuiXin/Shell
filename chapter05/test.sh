#!/bin/bash
a=$1  #<==在脚本中定义两个变量并分别赋值
b=$2
echo "a-b=$(($a-$b))" #<==对定义的变量进行各种符号运算，并通过表达式的形式输出
echo "a+b=$(($a+$b))"
echo "a*b=$(($a*$b))"
echo "a/b=$(($a/$b))"
echo "a**b=$(($a**$b))"
echo "a%b=$(($a%$b))"
