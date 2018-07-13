#!/bin/bash
#config file path
# source funcction library(you can use action)
. /etc/init.d/functions
FILE_PATH=/etc/openvpn_authfile.conf
[ ! -f $FILE_PATH ] && touch $FILE_PAAH
usage(){
        cat <<EOF
        USAGE: `basename $0` {-add|-del|-search} username
EOF
}
# judge run as root
if [ $UID -ne 0 ];then
        echo "you are not supper user, please call root!"
        exit 1;
fi

# judge arg numbers
if [ $# -ne 2 ];then
        usage
        exit 2
fi
# judge operate with case
case "$1" in
        -a|-add)
                shift   #<==将$1清除，将$2替换为$1，参数位置左移
                if grep "^$1$" ${FILE_PATH} >/dev/null 2>&1 #在配置文件中搜索username
                then
                        action $"vpnuser,$1 is exist" /bin/false
                        exit
                else
                        chattr -i ${FILE_PATH}  #<==解锁文件
                        /bin/cp ${FILE_PATH} ${FILE_PATH}.$(date +%F%T) #<==备份文件，尾部加时间
                        echo "$1" >> ${FILE_PATH}
                        [ $? -eq 0 ] && action $"Add $1" /bin/true #<==如果返回值为0，提示成功
                        chattr +i ${FILE_PATH}  #<==给文件加锁
                fi
                ;;
        -d|-del)
                shift
                if [ `grep "\b$1\b" ${FILE_PATH}|wc -l` -lt 1 ] #<==过滤第一个参数值，并看文件中是否存在
                then
                        action $"vpnuser, $1 is not exist." /bin/false
                        exit
                else
                        chattr -i ${FILE_PATH}
                        /bin/cp ${FILE_PATH} ${FILE_PATH}.$(date +%F%T)
                        sed -i "/^${1}$/d" ${FILE_PATH} #<==删除文件中包含命令行传参的用户
                        [ $? -eq 0 ] && action $"Del $1" /bin/true
                        chattr +i ${FILE_PATH}
                        exit
                fi
                ;;
        -s|-search)
                shift
                if [ `grep -w "$1" ${FILE_PATH}|wc -l` -lt 1 ]
                then
                        echo "vpnuser, $1 is not exist.";exit
                else
                        echo "vpnuser, $1 is exist.";exit
                fi
                ;;
        *)
                usage
                exit
                ;;
esac


