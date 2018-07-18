#!/bin/bash
total=0
export LANG="zh_CN.UTF-8"
NUM=$((RANDOM%61))
echo "当前苹果的价格是每斤$NUM元"
echo "==========================="
usleep 1000000
clear
echo '这苹果多钱一斤？
      请猜0-60的数字'
apple(){
        read -p "请输入你的价格： " PRICE
        expr $PRICE + 1 &>/dev/null
        if [ $? -ne 0 ]
        then
                echo "别逗我了，输入数字"
                apple #<==重新加载函数
        fi
}
guess(){
        ((total++))
  if [ $PRICE -eq $NUM ]
  then 
          echo "猜对了，就是$NUM元"
          if [ $total -le 3 ];then
          echo "一共猜了${total}次，牛！"
  elif [ $total -gt 3 -a $total -le 6 ];then
          echo "一共猜了$total次，次数有点多，加油"
  elif [ $total -gt 6 ]
  then
          echo "一共猜了$total次，太多了"
  fi
  exit 0
  elif [ $PRICE -gt $NUM ];then
          echo "哈哈，你用这个价钱买吧"
          echo "再给你一次猜测得到机会，请继续猜： "
          apple
  elif [ $PRICE -lt $NUM ];then
          echo "太低了"
          echo "再给你一次机会，请继续猜： "
          apple 
  fi
}
  main(){
          apple
          while true
          do
                  guess
          done
  }
  main
