#!/bin/sh

. ./settings.sh

ssh -i $PATH_TO_KEY "ec2-user@${INSTANCE_IP}"