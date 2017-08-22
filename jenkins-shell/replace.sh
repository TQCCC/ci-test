#!/usr/bin/env bash
echo "开始备份、替换项目包"

file_path=~/.jenkins/workspace/${JOB_BASE_NAME}/target/*.?ar

#
if [ -f "$file_path" ]; then
    mv  /jenkins-test-java-app/*.?ar /jenkins-test-java-app-backup/*.?ar.`date +%Y%m%d%H%M%S`
fi
cp ${file_path} /jenkins-test-java-app