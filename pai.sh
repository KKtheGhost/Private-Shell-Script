#!/bin/bash
#Program
#		このプログラムによって、円周率の計算ができます。			
#version 0.1
#History
#2018/08/14 Kivinsae

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo -e "This program will calculate PI value. \n"
#声明本程序的功能是算π

echo -e "You should input a float number to calculate PI value. \n" 	
#提示用户输入数位

read -p "The scale number (10-10000) under 5000 was recommended." checking		
#读取输入值为变量checking

num=${checking:-"10"}
#开始判断是否有有效输入

echo -e "Starting calculation of PI value, Please wait in patience."
#提示输出结果

time echo "scale=${num};4*a(1)" | bc -lq
#调用了BC中提供的圆周率算法