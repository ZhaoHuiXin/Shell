#!/bin/sh
path=/server/scripts
[ ! -d $path ] && mkdir -p $path
#menu
cat <<MENU
  1.[INSTALL LAMP]
  2.[INSTALL LNMP]
  3.[EXIT]
  Pls input the num you want:
MENU
read num
expr $num + 1 &>/dev/null
RETVALUE=$?
#n1
[ $RETVALUE -ne 0 ] && {
  echo "the num you input must be {1|2|3}"
  exit 1
}
#n2
[ $num -eq 1 ] && {
  echo "start installing lamp."
  sleep 2
  [ -x $path/lamp.sh ] || {
    echo "$path/lamp.sh does not exist or can not be exec."
    exit 1 
  }
  $path/lamp.sh
  #source $path/lamp.sh
}
#n3
[ $num -eq 2 ]&&{
  echo " start installing lnmp."
  sleep 2
  [ ! -x $path/lamp.sh  ] && {
    echo "$path/lnmp.sh does not exist or can not be exec."
    exit 2
  }
  #$path/lnmp.sh
  source $path/lnmp.sh
}
#n4
[ $num -eq 3 ] && {
  echo "Bye bye~"
  exit 3
}
#判断用户输入不是1|2|3
[[ ! $num =~ [1-3]  ]] && { #<==[[]]的正则匹配方法
  echo "the num you input must be {1|2|3}" 
  echo "input ERROR"
  exit 4
}


