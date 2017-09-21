#!/usr/bin/env bash
echo "开始尝试停止运行中项目"
if [ -z "${JAR_NAME}" ]||[ ! "${JAR_NAME##*.}"x = "jar"x ]; then
    echo "缺少jar包，退出"
    exit 0
fi

# 输出查找到的进程
echo "查找进程："
jps -l | grep "${JAR_NAME}" | grep -v grep

pid=`jps -l | grep "${JAR_NAME}" | grep -v grep | awk '{print $1}'`
if [ -n "${pid}" ]; then
    echo "停止运行中项目: " ${JAR_NAME}
    echo "强制停止pid：" ${pid}
    kill -9 ${pid}
fi
