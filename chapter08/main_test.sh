#!/bin/sh
test(){
        echo "${1} ${2}"
}
main(){
        echo "main ${1} ${2}"
        test
}
main

