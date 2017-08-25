#!/usr/bin/env bash
echo "开始启动新项目: " ${JOB_NAME}
chmod 777 /jenkins-test-java-app/${1}
echo "执行..."
echo "jar: " ${1}
echo "JOB_NAME: " ${JOB_NAME}
BUILD_ID=dontKillMe
nohup java -jar /jenkins-test-java-app/${1} > /jenkins-test-java-app/${1}_log.log 2>&1 &
echo "**********************${1} started*************************"

