#########################################################################
# File Name: s7_installvsftpd.sh
# Author: Crow
# mail:qnglsk@163.com
# Created Time: 2020年03月26日 星期四 14时54分41秒
#########################################################################
#!/bin/bash

# 测本机当前用户是否为超级管理员,如果是管理员,则使用 yum 安装 vsftpd,如果不是,则提示您非管理员(使用字串对比版本)

# 检测本机当前用户是否为超级管理员,如果是管理员,则使用 yum 安装 vsftpd,如果不

# 是,则提示您非管理员(使用字串对比版本)

if [ $USER == 'root' ];then
	apt-get install vsftpd
else
	echo "您不是管理员，没有权限安装软件。"
fi
