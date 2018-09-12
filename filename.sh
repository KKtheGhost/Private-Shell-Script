#!/bin/bash
#Program
#		mkdir everyday via date rename as filename_yyyymmdd
#version 0.1
#History
#2018/08/14 Kivinsae

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo -e "I will use #touch command to create three files."  #提示信息
read -p "Please input your filename:" fileuser    #输入预设文件名

filename=${fileuser:-"filename"}    #分析是否有配置文件名

#开始利用data指令获取档名
date1=$(date --date='2 days ago' +%Y%m%d)	#两天前日期
date2=$(date --date='1 days ago' +%Y%m%d)	#一天前日期
date3=$(date +%Y%m%d)						#今天日期
file1=${filename}${date1}					#开始配置文件名
file2=${filename}${date2}
file3=${filename}${date3}

#开始建立文档
touch /kk/test/"${file1}"		#总计三行，新文件
touch /kk/test/"${file2}"
touch /kk/test/"${file3}"