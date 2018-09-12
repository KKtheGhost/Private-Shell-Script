#!/bin/bash
#Program
#		检车文件是否存在，是文件还是目录，以及权限。		
#version 0.1
#History
#2018/08/14 Kivinsae

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

#提示用户软件功能，并且要求输入文件名
echo -e "Please input a filename, we will check file's type and permissions. \n \n"
read -p "Input the filename Please:" filename

#判断输入字符是否为空，如果空则提示，然后继续执行exit。
test -z ${filename} && echo "You must input a filename!" && exit 0

#开始判断文件类型属性
test -f ${filename} && filetype="regular file"		#判断是否为文件
test -d ${filename} && filetype="directory"			#判断是否是目录
test -r ${filename} && perm="readable"				#判断是否可读
test -w ${filename} && perm="${perm} writable"		#判断是否可写，并进行结果累加
test -x ${filename} && perm="${perm} executable"	#判断是否可运行，并进行结果累加

echo "The filename:${filename} is a ${filetype} \n"
echo "And the permissions for you are: ${perm}"