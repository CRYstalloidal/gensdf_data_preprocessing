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
 ./manifold $1"/"$file "./mani/"`basename $1`"/"`basename $file`
 fi
 done
}
#函数定义结束，这里用来运行函数
folder="./selectedmodels"
readfile $folder
