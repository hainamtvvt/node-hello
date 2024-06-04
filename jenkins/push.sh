#!/bin/bash
export DOCKER_USERNAME=${DOCKER_USERNAME}
export DOCKER_PASSWORD=${DOCKER_PASSWORD}

docker login --username "hainamtvvt" --password "357951Hn@"

docker push ${DOCKER_REPO}:${BUILD_ID}