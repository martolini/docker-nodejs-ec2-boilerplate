#!/bin/sh

. ./settings.sh

docker build -t $DOCKER_CONTAINER_NAME .

docker push $DOCKER_CONTAINER_NAME

ssh -i $PATH_TO_KEY "ec2-user@${INSTANCE_IP}" "docker rm -f ${DOCKER_CONTAINER_NAME} || true && docker pull ${DOCKER_CONTAINER_NAME} && docker run -d -p 80:1337 --name ${DOCKER_SHORT_NAME} --restart always ${DOCKER_CONTAINER_NAME}"