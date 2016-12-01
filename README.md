## Introduction

Personal boilerplate scripts for auto-deploying Docker images with nodejs, es6 and express to an ec2 instance.

## Installation

Spin up a EC2 instance through the panel and add in the public IP, path to key in the `settings.sh`. Then set the `DOCKER_CONTAINER_NAME` to the tag of the Docker image, e.x `martolini/docker-example`. The `DOCKER_SHORT_NAME` refers to the `--name` attribute, and could be `docker-example` here. To see logs for the container would then be `docker logs --tail=100 -t -f docker-example`.

Run `chmod +x deploy.sh connect.sh setup.sh`
Run `./setup.sh` to update packages and install docker.
Run `./deploy.sh` to build the image, push to dockerhub, log into the ec2 instance, pull, remove old container and start the new one.
Run `./connect.sh` to ssh into the server.
Go to `http://your-ec2-ip` to check that it works.

## Motivation

I tend to do this alot, so needed a boilerplate for it.