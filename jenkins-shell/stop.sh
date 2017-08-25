#!/usr/bin/env bash
echo "停止运行中项目: " ${1}
pid=`ps -ef | grep "java -jar /jenkins-test-java-app/${1}" | grep -v grep | awk '{print $2}'`
if [ -n "${pid}" ]; then
    echo "强制停止pid：" ${pid}
    kill -9 ${pid}
fi

