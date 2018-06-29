#!/bin/sh
for i in "$@"
do
if [ `expr length $i` -le 6 ]
    then
        echo $i
fi
done

