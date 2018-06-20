# !/bin/sh
# 实现系统中多次执行某一个脚本后的进程只有一个（$$的企业级应用）
pidpath=/tmp/a.pid  #<==定义pid文件
if [ -f "$pidpath" ]  #<==如果pid文件存在，则执行then后面的命令
    then
        kill `cat $pidpath` > /dev/null 2>&1  #<==杀掉与前一个进程号对应的进程
	rm -rf $pidpath  #<==删除pid文件
fi
echo $$ > $pidpath
sleep 300
