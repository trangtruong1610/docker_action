#!/usr/bin/env bash
SCRIPT_HOME=`cd $(dirname $BASH_SOURCE) && pwd`  # get SCRIPT_HOME=executed script's path, containing folder, cd & pwd to get container path
   APP_HOME=`cd "$SCRIPT_HOME/../" && pwd`

docker build --file "$SCRIPT_HOME/Dockerfile" -t trangtruong1610/docker-action $APP_HOME && docker run -it trangtruong1610/docker-action

