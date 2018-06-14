[ $# -ne 2 ] && {     #<==如果用户传入参数个不等于2
	echo "please input two args" #<==提示正确用法
	exit 1    #<==由于不符合条件，退出脚本，返回值为 1
}
echo "Hell! MaxZhao" #<==满足传参个数的条件后能走到这里，打印问候语
