#!/usr/bin/env bash
echo "开始尝试停止运行中项目"
if [ -z "${1}" ]; then
    echo "缺少参数，退出"
    exit 0
fi
pid=`ps -ef | grep "java -jar ${JAVA_APP_DIR}/${1}" | grep -v grep | awk '{print $2}'`
if [ -n "${pid}" ]; then
    echo "停止运行中项目: " ${1}
    echo "强制停止pid：" ${pid}
    kill -9 ${pid}
fi