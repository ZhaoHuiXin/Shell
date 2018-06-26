CheckUrl() { #<==定义函数，命名为CheckUrl
timeout=5  #<==定义wget访问超时时间，超时就退出
fails=0  #<==初始化访问网站失败的次数记录变量，若失败达到2次，就发邮件报警
success=0  #<==初始化访问网站成功的次数记录变量，如果为1，则表示成功，退出脚本
while true  #<==持续循环检测
    do
        wget --timeout=$timeout --tries=1 http://www.google.com -q -O /dev/null
        #<==使用wget测试访问老男孩的博客地址
        if [ $? -ne 0 ] #<==如果上述wget执行不成功，即$?不为0，则执行if语句内命令
            then
                let fails=fails+1 #<==用let是访问失败次数+1，可以用((fails=fails+1))代替
        else
                let success+=1 #<==“返回值不为0”不成立，即访问成功，将成功次数+1
        fi
        if [ $success -ge 1 ] #<==如果成功次数大于等于1
            then
                echo sucess #<==则打印成功标识，也可以用(:)替代，不输出结果，这是为了观察方便
                exit 0 #<==返回0值，退出脚本，表示检测成功
        fi
        if [ $fails -ge 2 ]
            then
                Critical="sys is down."
                echo $Critical
                echo $Critical|tee|mail -s "$Critical" huixincoming@163.com
                #<== 输出并发邮件报警
                exit 2
        fi
    done
    }
    CheckUrl #<==执行函数
