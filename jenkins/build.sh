#!/bin/bash
docker build -t ${DOCKER_IMAGE}:${BUILD_ID} .

docker tag ${DOCKER_IMAGE}:${BUILD_ID} ${DOCKER_REPO}:${BUILD_ID}