#!/bin/sh
#<==通过命令行传参方式实现，那么参数个数可以直接使用$#进行判断
a=$1
b=$2
[ $# -lt 2 ]&&{
  echo "USAGE:$0 NUM1 NUM2"
  exit 1
}
#剩下的和6_35_1.sh如出一辙
