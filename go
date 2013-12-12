#!/bin/bash
rm -rf node_modules
npm install
node --version > node-version
rm -f node_modules/**/.node-version
cp node-version node_modules/hubot/.node-version
mv node-version node_modules/hubot-scripts/.node-version

session=$(screen -ls | grep 'redis')
if [ -z "$session" ]
then
    echo -e '\033[32mstarting new redis screen session\033[0m'
    screen -S redis -dm redis-server
else
    echo -e '\033[33mRe-using redis screen session\033[0m'
    echo $session
fi
echo starting hubot
hubot

