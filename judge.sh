#!/bin/bash
#Program
#		根据用户输入判断是否继续执行	
#version 0.1
#History
#2018/08/14 Kivinsae

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "Please choose, Y to continue, N to stop:" yn		#输入Y或者N
[ "${yn}" == "y" -o "${yn}" == "Y" ] && echo "OK, let us start." && exit 0	#判断Y
[ "${yn}" == "n" -o "${yn}" == "N" ] && echo "OK, Interrupt." && exit 0		#判断N
echo "I don't know what the hell you are saying." && exit 0					#都不是，结束
