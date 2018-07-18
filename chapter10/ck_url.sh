#!/bin/bash
. /etc/init.d/functions
if [ $# -ne 1 ];then
        echo "usage $0 url"
        exit 1
fi
while true
do
        if [ `curl -o /dev/null --connect-timeout 5 -s -w "%{http_code}" $1|egrep -w "200|301|302"|wc -l` -ne 1 ]
#<== 对传入的url参数获取状态码，过滤200、301、302任意之一转为数字，如果不等于1，则表示状态信息不对
        then
                action "$1 is error" /bin/false
        else
                action  "$1 is ok" /bin/true
        fi
        sleep 10
done
