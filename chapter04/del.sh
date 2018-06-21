#<== 删除7天前的过期数据备份
find ${path-/tmp} -name "*.tar.gz" -type f -mtime +7|xargs rm -f

