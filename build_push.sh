#!/bin/bash
OWNER=ashrielbrian
IMAGE_NAME=wandb-action
TAG=latest

docker build -t $OWNER/$IMAGE_NAME:$TAG -f prebuild.Dockerfile .
echo "$PASSWORD" | docker login -u $OWNER --password-stdin

docker push $OWNER/$IMAGE_NAME:$TAG