#! /bin/bash


# lms image tag
VERSION=7.9.2
DOCKERHUBUSER=heziegl

# docker image to build
IMAGE_NAME=$DOCKERHUBUSER/rpi-lms:$VERSION

# build runtime
sudo docker build -t $IMAGE_NAME .

# push to docker hub
sudo docker push $IMAGE_NAME
