#!/bin/bash

source /root/.env

echo "NODEAPP_GIT_REPO=$NODEAPP_GIT_REPO"
echo "NODEAPP_GIT_BRANCH=$NODEAPP_GIT_BRANCH"

ssh-keyscan $NODEAPP_GIT_DOMAIN >> ~/.ssh/known_hosts

mkdir -p /var/www/nodeapp
cd /var/www/nodeapp
git clone $NODEAPP_GIT_REPO ./
git checkout $NODEAPP_GIT_BRA
