#!/bin/sh
expr $1 + 1 >/dev/null 2>&1
[ $? -eq 0 ]&&echo int || echo chars #<==这是一个条件表达式语法，返回值为0输出int，否则输出chars

