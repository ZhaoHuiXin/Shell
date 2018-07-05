#!/bin/sh
read -p "Pls iniput two num: " a b
#no1,通过变量的长度，判断是否传入了两个变量
[ -z "$a" -o -z "$b" ] && {
  echo "Pls input tow num again"
  exit 1 #<==以返回值1退出脚本
}
#no2,通过使用expr表达式特性，判断参数是否为整数
expr 1 + "$a" &> /dev/null
RETVAL1=$?
expr 1+"$b" > /dev/null 2>&1
RETVAL2=$?
test $RETVAL1 -eq 0 -a $RETVAL2 -eq 0 || {
  echo "Pls input two "num" one more time"
  exit 2
}
#no3,到这里$a和$b都是整数，进行关系判断
[ "$a" -gt "$b" ]&&{
  echo "$a > $b"
  exit 0
}
[ $a -lt $b ]&&{
  echo "$a < $b"
  exit 0
}
[ "$a" -eq "$b" ]&&{
  echo "$a = $b"
  exit 0
}

