#!/usr/bin/env bash
sh stop.sh
sh replace.sh

echo "准备脚本执行结束"
echo "开始执行启动脚本"

chmod 777 startup.sh
nohup startup.sh &
