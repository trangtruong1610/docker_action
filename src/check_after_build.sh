#!/usr/bin/env bash

  im='trangtruong1610/docker-action' # image name
  it='DEV'                           # image tag

  # remove image if exist
  docker image rm -f $im:$it || true

  # check image after build
  docker run -it $im:$it
