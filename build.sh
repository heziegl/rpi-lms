#! /bin/bash


# lms image tag
VERSION=7.8.1

# docker image to build
IMAGE_NAME=heziegl/rpi-lms:$VERSION

# build grafana runtime
sudo docker build -t $IMAGE_NAME .

