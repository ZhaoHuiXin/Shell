#!/bin/sh
echo -n "pls input a char:" #<==打印提示字符串，-n表示不换行
read var #<==读入用户输入，赋值给var
[ "$var" == "1" ] &&{
  echo 1 
  exit 0 #<==每个逻辑正确，则以返回值0退出脚本，从而避免执行脚本后面无用的代码
}
[ "$var" == "2" ] &&{
  echo 2
  exit 0
}
[ "$var" != "2" -a "$var" != "1" ]&&{ 
  echo error
  exit 2
}

