#!/bin/sh
#no.1
[ $# -ne 2 ]&&{
    echo "USAGE $0 NUM1 NUM2"
    exit 1
}
#no.2
a=$1
b=$2
expr $a + 1 &>/dev/null
RETVAL_A=$?
expr $b + 1 &>/dev/null
RETVAL_B=$?
if [ $RETVAL_A -ne 0 -o $RETVAL_B -ne 0 ]
    then 
        echo "you must input two int"
        exit 2
fi
echo "a+b=$(($a+$b))"
echo "a-b=$(($a-$b))"
