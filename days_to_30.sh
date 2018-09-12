#!/bin/bash
#Program
#		告诉自己离三十岁还有几天
#version 0.1
#History
#2018/08/14 Kivinsae

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/root/bin
export PATH

#声明本程序的功能
echo "This Program will tell you how many days left until your 30th birthday.\n"
echo "Or tells you how many days have gone since your 30th birthday."

#输入用户30岁生日用来计算
read -p "Please write down the date of your 30th birthday(fornat YYYYMMDD):" date2

#检查输入是否有效，截取所有数字并且看是否是八位
date_d=$(echo ${date2} | grep '[0-9]\{8\}')
if [ "${date_d}" == "" ]; then
			echo "the input is wrong."
			exit 1
fi

#将输入的日期转换成秒数
declare -i date_30=$(date --date="${date2}" +%s)
#获得现在时间的秒数
declare -i date_now=$(date +%s)
#相减获得秒数差
declare -i date_total_s=$((${date_30}-${date_now}))
#把秒数差转换成日差
declare -i date_d=$((${date_total_s}/60/60/24))

#如果是已经超过30，则直接显示超过的天数，如果没有超过30，则拆分一下时间，显示天数+小时数
if [ "${date_total_s}" -lt "0" ]; then
		echo "You poor old man have been elder than 30 by:"$((-1*${date_d}))" ago"
else
		declare -i date_h=$(($((${date_total_s}-${date_d}*60*60*24))/60/60))
		echo "You will be 30 within ${date_d} days and ${date_h} hours"
fi