#!/bin/sh
hello(){
        echo "hello , ${1}!"
}
function usage(){
echo "usage:$0 url"
exit 1
}
main(){
        echo "$#" #<==打印$*内参数个数
        echo "${1},${2}"
        if [ $# -ne 1 ]
        then
                usage
        fi
        hello $1  # 接收函数的传参，，即把下文main结尾的$*传到这里
}
main $* #<==这里的$*就是把命令行接收的所有参数作为函数参数传给函数内部
