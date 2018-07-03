#!/bin/bash
a=$1
b=$2
Usage(){
	echo "USAGE:sh $0 num1 num2"
	exit 1
}
if [ $# -ne 2 ];then
	Usage
fi
expr $a + 1 >/dev/null 2>&1
[ $? -ne 0 ] && Usage
expr $b + 0 >/dev/null 2>&1 #<==这个地方使用的加0，为了防止b为0而导致被除数为0
[ $? -ne 0 ] && Usage
#no3
echo "a-b=$(($a-$b))"
echo "a+b=$(($a+$b))"
if [ $b -eq 0 ] #<==这个地方对b做了判断，防止被除数为0，算是保险，可能用不上
	then 		
		echo "your input does not allow to run."
		echo "a/b =error"
		echo "a%b =error"
	else
		echo "a/b =$(($a/$b))"
		echo "a%b =$(($a%$b))"
fi

