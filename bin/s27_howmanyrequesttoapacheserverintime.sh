#########################################################################
# File Name: s27_howmanyrequesttoapacheserverintime.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年03月30日 星期一 10时24分16秒
#########################################################################
#!/bin/bash

# 统计 13:30 到 14:30 所有访问 apache 服务器的请求有多少个

# 统计 13:30 到 14:30 所有访问 apache 服务器的请求有多少个

# awk 使用‐F 选项指定文件内容的分隔符是/或者:

# 条件判断$7:$8 大于等于 13:30,并且要求,$7:$8 小于等于 14:30

# 最后使用 wc ‐l 统计这样的数据有多少行,即多少个

awk -F "[ /:]" '$7":"$8>="13:30" && $7":"$8<="14:30"' /var/log/httpd/access_log |wc -l
