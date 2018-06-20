[ $# -ne 2 ] && {
echo "must be two args."  #<==若参数不等于2，则输出提示
exit 119  #<==终止程序运行并以指定的119状态值退出程序，赋值给当前Shell的 "$?" 变量
}
echo "hello! Max Zhao"
