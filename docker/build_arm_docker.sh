#!/bin/bash

TAG=$1

/usr/bin/docker buildx build --platform linux/arm/v7 -t registry.gitlab.com/skails/open-elevation-api:$TAG -f ./docker/Dockerfile .
