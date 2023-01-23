#!/bin/sh

TAG=$1

./docker/build_arm_docker.sh $TAG
/usr/bin/docker push registry.gitlab.com/skails/open-elevation-api:$TAG