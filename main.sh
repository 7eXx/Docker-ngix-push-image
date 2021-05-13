#!/bin/sh

container_name=nginx-hello-world
docker_image=nginx-hello-world

if [ $# -eq 0 ] ; then
    echo 'No tag image provvided'
    exit 1
fi

image_tag=$1

full_image_name=$docker_image:$image_tag

echo "building image with name: $full_image_name"

docker build -t $full_image_name .

echo "starting container with name: $container_name"

docker run -d --rm --name $container_name -p 8080:80 $full_image_name