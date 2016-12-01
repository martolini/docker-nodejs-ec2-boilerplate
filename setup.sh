#!/bin/sh
. ./settings.sh

ssh -i $PATH_TO_KEY "ec2-user@${INSTANCE_IP}" "sudo yum update -y && sudo yum install docker -y && sudo service docker start && sudo usermod -a -G docker ec2-user"
echo "Done setting up the instance"