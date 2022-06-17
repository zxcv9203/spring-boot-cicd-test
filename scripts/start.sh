#!/usr/bin/env bash
PROJECT_PATH="/home/ec2-user/egg-market"
PROJECT_NAME="demo"
PROJECT_VERSION="0.0.1-SNAPSHOT"
JAR_FILE="$PROJECT_PATH/target/$PROJECT_NAME-$PROJECT_VERSION"

DEPLOY_LOG="$PROJECT_PATH/logs/deploy.log"


NOW = $(date +%c)

echo "[$NOW] 애플리케이션 실행" >> $DEPLOY_LOG
nohup java -jar $JAR_FILE &

RUNNING_PID=$(pgrep -f $JAR_FILE)
echo "[$NOW] 프로세스가 정상적으로 실행되었습니다. 실행 PID -> $RUNNING_PID" >> $DEPLOY_LOG