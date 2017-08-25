#!/usr/bin/env bash
echo "开始执行项目脚本: " ${1}
sh /jenkins-shell/stop.sh ${1}
sh /jenkins-shell/replace.sh ${1}
echo "开始执行启动脚本"
chmod 777 /jenkins-shell/startup.sh
sh /jenkins-shell/startup.sh ${1}

