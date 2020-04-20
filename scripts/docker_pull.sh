#!/bin/bash

export $(cat ../.env | grep -v ^# | xargs)

aws ecr get-login-password | docker login --username AWS --password-stdin ${AWS_ACCOUNT_ID}.dkr.ecr.ap-northeast-1.amazonaws.com
docker pull ${AWS_ACCOUNT_ID}.dkr.ecr.ap-northeast-1.amazonaws.com/monthly_money_manager_app
docker pull ${AWS_ACCOUNT_ID}.dkr.ecr.ap-northeast-1.amazonaws.com/monthly_money_manager_nginx