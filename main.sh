#!/bin/sh

. ./.env

. ./.env.local

container_name=nginx-hello-world

full_image_name=$USERNAME/$DOCKER_IMAGE:$IMAGE_TAG

echo "building image with name: $full_image_name"

docker build -t $full_image_name .

echo "starting container with name: $container_name"

docker run -d --rm --name $container_name -p 8080:80 $full_image_name