#!/usr/bin/env bash
echo "开始停止运行中项目"

ll

pid = `ps -ef | grep ${JOB_BASE_NAME} | grep -v grep | awk '{print $2}'`
if [ -n "$pid" ]; then
    echo "强制停止pid：" ${pid}
    kill -9 ${pid}
fi