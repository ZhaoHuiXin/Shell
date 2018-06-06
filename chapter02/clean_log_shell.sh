# !/bin/bash
# 清除日志脚本
LOG_DIR=/var/loog
# $UID为0的用户即root用户
ROOT_UID=0   
# 脚本需要使用root用户权限来运行，如果不是root用户做出提示并终止程序运行
if [ "$UID" -ne "$ROOT_UID" ]
    then
	echo "must be root to run this script"
	exit 1
fi
# 如果切换到制定目录失败，则给出提示，并终止程序运行
cd $LOG_DIR || {
	echo "cannot change to necessary directory"
	exit 1
}
# 经过上述两个判断，能到达这里说明用户权限和路径就是对的，只有清空成功，才能打印成功提示。
cat /dev/null>messages && {
	echo "logs cleaned up"
	exit 0
       	# 退出之前返回0表示成功，返回1表示失败。
}
echo "logs cleaned up fail"
exit 1
