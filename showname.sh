#!/bin/bash
#Program
#		Input first and last name, then show the full-name
#version 0.1
#History
#2018/08/14 Kivinsae

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "Please input your first name:" firstname    #提示输入变量firstname
read -p "Please input your lasr name:" lastname      #提示输入变量lastname
echo -e "\nYour full-name is:${firstname} ${lastname}"   #从屏幕输出结果
