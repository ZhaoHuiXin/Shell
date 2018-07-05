#!/bin/bash
read -p "Pls input one num: " a
[ $a -eq 1 ] && echo 1 && exit 0
[ $a -eq 2 ] && echo 2 && exit 0
echo "the num is wrong" && exit 2
