#!/bin/bash

TAG=$1

/usr/bin/docker buildx build --platform linux/arm64/v8 -t registry.gitlab.com/skails/open-elevation-api:$TAG -f ./docker/Dockerfile .
