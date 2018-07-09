#!/bin/bash
usage(){
  echo "USAGE:num1 num2"
  exit 1
}
read -p "Pls input num1 num2: " num1 num2
if [ -z $num1 ] || [ -z $num2 ];then
  echo "please input two num"
  usage
fi
expr $num1 + 1 &>/dev/null
if [ $? -ne 0 ];then 
  echo "please input num1 type int"
  exit 1
fi
expr $num2 + 1 &>/dev/null
if [ $? -ne 0 ];then
  echo "please input num2 type int"
  exit 1
fi
if [ $num1 -gt $num2 ];then
  echo "$num1 > $num2"
fi
if [ $num1 -lt $num2 ];then
  echo "$num1 < $num2"
fi
if [ $num1 -eq $num2 ];then
  echo "$num1 = $num2"
fi

