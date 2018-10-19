#! /bin/bash

#用来打包整个文件夹内所有的文件，并删除源文件
for dir in `ls -l|grep ^d|awk '{print $9}'`
do
tar zcvf $dir.tar.gz $dir --remove-files 
done
