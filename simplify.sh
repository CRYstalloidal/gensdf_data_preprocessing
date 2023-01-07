#!/bin/bash

function readfile ()
{
#这里`为esc下面的按键符号
 for file in `ls $1`
 do
#这里的-d表示是一个directory，即目录/子文件夹
 if [ -d $1"/"$file ]
 then
#如果子文件夹则递归
  readfile $1"/"$file
 else
 echo $1"/"$file	 
 ./simplify -i $1"/"$file -o "./simp/"`basename $1`"/"`basename $file` -m
 fi
 done
}
#函数定义结束，这里用来运行函数
folder="./mani"
readfile $folder
