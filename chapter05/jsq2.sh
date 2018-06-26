#!/bin/bash
print_usage(){
    printf $"USAGE:$0 NUM1 {+|-|*|/} NUM2\n" 
    exit 1
}
if [ $# -ne 3 ] #<==如果传入参数不等于3个
    then
        print_usage #<==调用用户帮助函数，给予提示
fi

firstnum=$1
secondnum=$3
op=$2

if [ -n "`echo $firstnum|sed 's/[0-9]//g'`" ];then
    print_usage
fi
if [ "$op" != "+" ] &&[ "$op" != "-" ]&&[ "$op" != "*" ]&&[ "$op" != "/"]
    #<== 判断输入的操作符是否符合要求
    then
        print_usage
fi

if [ -n "`echo $secondnum|sed 's/[0-9]//g'`" ];then
    print_usage
fi
echo "${firstnum}${op}${secondnum}=$((${firstnum}${op}${secondnum}))"

