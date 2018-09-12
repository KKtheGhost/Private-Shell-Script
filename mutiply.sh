#!/bin/bash
#Program
#		Use inputted 2 integer numbers to do multiply them
#version 0.1
#History
#2018/08/14 Kivinsae

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

#要求输入两个数字去参与乘法
echo -e "You should input 2 numbers, so I can multiplying them! \n"

read -p "First number:" firstnum		#输入第一个数字
read -p "Secend number:" secnum			#输入第二个数字
total=$((${firstnum}*${secnum}))		#进行乘法运算


#换行并输出乘法结果
echo -e "\nSo the result of ${firstnum} x ${secnum} is ===> ${total}"
