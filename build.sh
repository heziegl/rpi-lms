#! /bin/bash


# lms image tag
VERSION=7.8.1
DOCKERHUBUSER=heziegl

# docker image to build
IMAGE_NAME=$DOCKERHUBUSER/rpi-lms:$VERSION

# build grafana runtime
sudo docker build -t $IMAGE_NAME .

# push to docker hub
sudo docker push $IMAGE_NAME
