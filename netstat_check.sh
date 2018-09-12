#!/bin/bash
#Program
#		检查特定网关是否开启
#version 0.1
#History
#2018/08/14 Kivinsae

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "Now I will detect the services."
echo -e "The www,fps,ssh,mail will be detected. \n"

testfile=/dev/shm/netstat_checking.txt		#创建一个txt来记录网络情况
netstat -tuln > ${testfile}					#导出网络情况到文档，并作为变量

#检车80端口
testing=$(grep ":80" ${testfile})
if [ "${testing}" != "" ];then
			echo "WWW is runing in your PC."
fi

#检查21端口
testing=$(grep "22" ${testfile})
if [ "${testing}" != "" ];then
			echo "SSH is runing in your PC."
fi

#检查22端口
testing=$(grep ":21" ${testfile})
if [ "${testing}" != "" ];then
			echo "FTP is runing in your PC."
fi

#检查25端口
testing=$(grep ":25" ${testfile})
if [ "${testing}" != "" ];then
			echo "Mail is runing in your PC."
fi

#检查631端口
testing=$(grep "631" ${testfile})
if [ "${testing}" != "" ];then
			echo "Printer is runing in your PC."
fi
