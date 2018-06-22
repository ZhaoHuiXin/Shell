#!/bin/bash/
print_usage(){  #<==定义一个函数名为print_usage
    printf "Please enter an interger\n"  #<==打印符合脚本要求的提示信息
    exit 1  #<==以返回值1退出脚本，标准输出到控制台
}
read -p "Please input first number: " firstnum  #<==读入第一个数字
if [ -n "`echo $firstnum|sed 's/[0-9]//g'`" ];then
#<== 判断是否为整数，删除读入内容的数字部分看是否为空(-n)
    print_usage
fi
read -p "Please input the operators: " operators  #<==读入运算符
if [ "${operators}" != "+" ]&&[ "${operators}" != "-" ]&&[ "${operators}" != "*" ]&&[ "${operators}" != "/" ];then #<==判断运算符的合理性
    echo "Please use (+|-|*|/)"
    exit 2 #<==不符合要求，返回值为2退出脚本，表示出现了错误
fi
read -p "Please input second number: " secondnum  #<==读入第二个要运算的数字
if [ -n "`echo $secondnum|sed 's/[0-9]//g'`" ];then
    print_usage
fi
echo "${firstnum}${operators}${secondnum}=$((${firstnum}${operators}${secondnum}))"

