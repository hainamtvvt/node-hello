#!/bin/bash
export DOCKER_USERNAME=${DOCKER_USERNAME}
export DOCKER_PASSWORD=${DOCKER_PASSWORD}

docker login --username "$DOCKER_USERNAME" --password "$DOCKER_PASSWORD"

docker push ${DOCKER_REPO}:${BUILD_ID}