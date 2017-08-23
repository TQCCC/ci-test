#!/usr/bin/env bash
echo "开始启动新项目" ${JOB_BASE_NAME}

ehco "授予当前用户权限"
chmod 777 /jenkins-test-java-app/$1
echo "执行....."
java -jar /jenkins-test-java-app/$1
echo "**********************jenkins-test started*************************"