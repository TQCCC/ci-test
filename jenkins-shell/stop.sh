#!/usr/bin/env bash
echo "stop shell 开始执行"

ll

pid = `ps -ef | grep jenkins-test | grep -v grep | awk '{print $2}'`
if [ -n "$pid" ]; then
    echo "强制停止pid：" ${pid}
    kill -9 ${pid}
fi