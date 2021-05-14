#!/bin/sh

. ./.env

. ./.env

full_image_name="$USERNAME/$DOCKER_IMAGE:$IMAGE_TAG"

cat ./.docker_pass | docker login -u $USERNAME --password-stdin

docker build -t $full_image_name .

docker push $full_image_name 

# docker logout