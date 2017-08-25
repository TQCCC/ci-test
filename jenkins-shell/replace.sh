#!/usr/bin/env bash
echo "开始备份: " ${1}
if [ -z "${1}" ]; then
    echo "缺少参数，退出"
    exit 0
fi
if [ -z "${JAVA_APP_DIR}" ]; then
    echo "无JAVA项目路径，退出"
    exit 0
fi


file_jar=~/.jenkins/workspace/${JOB_NAME}/target/${1}
if [ ! -d "${JAVA_APP_DIR}/backup" ]; then
    mkdir -p ${JAVA_APP_DIR}/backup
fi

if [ -f "${JAVA_APP_DIR}/${1}" ]; then
    mv  ${JAVA_APP_DIR}/${1} ${JAVA_APP_DIR}/backup/${1}.`date +%Y%m%d%H%M%S`
fi

echo "开始移进新jar包：" ${1}
if [ -f "${file_jar}" ]; then
    cp ${file_jar} ${JAVA_APP_DIR}
fi