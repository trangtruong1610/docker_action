#!/usr/bin/env bash
SCRIPT_HOME=`cd $(dirname $BASH_SOURCE) && pwd`  # get SCRIPT_HOME=executed script's path, containing folder, cd & pwd to get container path
   APP_HOME=`cd "$SCRIPT_HOME/../" && pwd`

it='trangtruong1610/docker-action'   # it aka image_tag
cn='trangtruong1610-docker-action'   # cn aka container_name
    # clear before run new
    docker stop $cn || true; docker rm $cn || true   # remove image if exists
    docker image rm $it || true   # remove image if exists

    # get git commit id
    gitcommitid=`git describe --always`

    # cleared now, run it
    docker build   --build-arg ENV_TAG=UAT   --build-arg GIT_COMMIT_ID=$gitcommitid   --file "$SCRIPT_HOME/Dockerfile"   -t $it:UAT      $APP_HOME       && docker run --name=$cn $it:UAT
    #              buildtime param ENV_TAG   buildtime param GIT_COMMIT_ID            Dockerfile path                    image tag    source folder      run the built image
