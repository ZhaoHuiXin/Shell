echo $$ > /tmp/a.pid  #<==获取$$的值，并重定向到/tmp/a.pid里
sleep 300  #<==休息300秒，模拟守护进程不退出
