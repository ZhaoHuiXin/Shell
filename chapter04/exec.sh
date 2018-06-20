exec </tmp/tmp.log  #<==读取log内容
while read line  #<==利用read一行行读取处理
do
    echo $line  #<== 打印输出
done
echo ok
