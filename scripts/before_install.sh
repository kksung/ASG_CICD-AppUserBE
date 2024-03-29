#!/bin/bash

# codedeploy-agent 재시작
sudo systemctl restart codedeploy-agent

# 이전에 실행된 gunicorn 프로세스를 중지합니다.
pkill -f 'gunicorn --bind 0.0.0.0:5000 --timeout 90 app:create_app()'

# 로그 파일과 프로젝트 디렉터리를 초기화합니다.
rm -rf /home/ubuntu/gunicorn.log
rm -rf /home/ubuntu/ssg_backend
mkdir /home/ubuntu/ssg_backend

cd /home/ubuntu/ssg_backend