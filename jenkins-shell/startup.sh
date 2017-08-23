#!/usr/bin/env bash
echo "开始启动新项目" ${JOB_NAME}

ehco "授予当前用户权限"
chmod 777 /jenkins-test-java-app/$1
echo "执行....."
nohup java -jar /jenkins-test-java-app/$1 > ${JOB_NAME}-log.log 2>&1 &
echo "**********************jenkins-test started*************************"