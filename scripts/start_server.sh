#!/bin/bash

export $(cat /var/www/monthly_money_manager/.env | grep -v ^# | xargs)
docker-compose -f /var/www/monthly_money_manager/docker-prod-aws.yml up -d