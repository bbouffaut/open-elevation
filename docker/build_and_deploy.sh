#!/bin/sh

TAG=$1
PLATFORM=$2

./docker/build_arm_docker.sh $TAG $PLATFORM
docker push registry.gitlab.com/skails/open-elevation-api:$TAG