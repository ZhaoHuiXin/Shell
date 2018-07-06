#!/bin/sh
FreeMem=`free -m|awk 'NR==2 {print $4}'`
CHARS="Current memory is $FreeMem"
if [ $FreeMem -lt 2000 ]
  then
    echo $CHARS|tee /tmp/messages.txt
    mail -s "`date +%F-%T` $CHARS" huixincoming@163.com </tmp/messages.txt
fi

