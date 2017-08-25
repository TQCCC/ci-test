#!/usr/bin/env bash
if [ -z "${JENKINS_SHELL_DIR}" ]; then
    JENKINS_SHELL_DIR=/var/www/jenkins-shell  #默认脚本位置
fi
if [ -z "${JAVA_APP_DIR}" ]; then
    JAVA_APP_DIR=/var/www/java-app      #默认java项目位置
fi
if [ ! -d "${JAVA_APP_DIR}" ]; then
  mkdir -p "${JAVA_APP_DIR}"        #没有就生成
fi

export JAVA_APP_DIR
export JENKINS_SHELL_DIR

echo "开始执行项目脚本" ${JOB_NAME}
sh ${JENKINS_SHELL_DIR}/stop.sh ${1}        #参数：生成包名
sh ${JENKINS_SHELL_DIR}/replace.sh ${1}
chmod 777 ${JENKINS_SHELL_DIR}/startup.sh
sh ${JENKINS_SHELL_DIR}/startup.sh ${1}



