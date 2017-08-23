#!/usr/bin/env bash

#$1 为要生成的jar包名称

sh stop.sh $1
sh replace.sh $1

echo "准备脚本执行结束"
echo "开始执行启动脚本"

chmod 777 startup.sh
nohup startup.sh $1 &
