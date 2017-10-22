#!/usr/bin/env bash
echo "开始启动项目: " ${JOB_NAME}
if [ -z "${JAR_NAME}" ]||[ ! "${JAR_NAME##*.}"x = "jar"x ]; then
    echo "缺少jar包，退出"
    exit 0
fi
if [ -z "${JAVA_APP_DIR}" ]; then
    echo "无JAVA项目路径，退出"
    exit 0
fi

chmod 777 ${JAVA_APP_DIR}/${JAR_NAME}
echo "执行jar包: " ${JAVA_APP_DIR}/${JAR_NAME}
BUILD_ID=dontKillMe
nohup java -jar ${JAVA_APP_DIR}/${JAR_NAME} &
echo "**********************${JAR_NAME} started*************************"

# TODO: 判断端口是否被占用，lsof -i:xxx
