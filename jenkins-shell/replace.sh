#!/usr/bin/env bash
echo "开始备份: " ${JAR_NAME}
if [ -z "${JAR_NAME}" ]||[ ! "${JAR_NAME##*.}"x = "jar"x ]; then
    echo "缺少jar包，退出"
    exit 0
fi
if [ -z "${JAVA_APP_DIR}" ]; then
    echo "无JAVA项目路径，退出"
    exit 0
fi

jar_path=~/.jenkins/workspace/${JOB_NAME}/target/${JAR_NAME}
if [ ! -d "${JAVA_APP_DIR}/backup" ]; then
    mkdir -p ${JAVA_APP_DIR}/backup
fi

if [ -f "${JAVA_APP_DIR}/${JAR_NAME}" ]; then
    mv  ${JAVA_APP_DIR}/${JAR_NAME} ${JAVA_APP_DIR}/backup/${JAR_NAME}.`date +%Y%m%d%H%M%S`
fi

if [ -f "${jar_path}" ]; then
    echo "开始移进新jar包：" ${JAR_NAME}
    cp ${jar_path} ${JAVA_APP_DIR}
fi
