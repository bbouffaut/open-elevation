#!/bin/bash

TAG=$1
PLATFORM=$2

docker buildx build --platform $PLATFORM -t registry.gitlab.com/skails/open-elevation-api:$TAG -f ./docker/Dockerfile .
