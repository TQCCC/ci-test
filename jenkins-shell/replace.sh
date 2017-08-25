#!/usr/bin/env bash
echo "开始备份、替换项目包: " ${1} ", JOB_NAME: " ${JOB_NAME}
file_path=~/.jenkins/workspace/${JOB_NAME}/target/${1}
if [ -f "/jenkins-test-java-app/${1}" ]; then
    mv  /jenkins-test-java-app/${1} /jenkins-test-java-app-backup/${1}.`date +%Y%m%d%H%M%S`
fi
if [ -f "$file_path" ]; then
    cp ${file_path} /jenkins-test-java-app
fi

