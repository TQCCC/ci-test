#!/usr/bin/env bash
echo "开始启动项目: " ${JOB_NAME}
if [ -z "${1}" ]; then
    echo "缺少参数，退出"
    exit 0
fi
if [ -z "${JAVA_APP_DIR}" ]; then
    echo "无JAVA项目路径，退出"
    exit 0
fi
chmod 777 ${JAVA_APP_DIR}/${1}
echo "jar包: " ${1}

BUILD_ID=dontKillMe
nohup java -jar ${JAVA_APP_DIR}/${1} >> ${JAVA_APP_DIR}/${1}-log.log 2>&1 &
echo "**********************${1} started*************************"
