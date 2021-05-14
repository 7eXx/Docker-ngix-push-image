# Nginx Docker Hub Test
This simple repository aims to test the pull feature to **hub.docker.com**.  
The docker file create a easy web server with nginx and copy the content of nginx folder to the **www** folder.

## Pre-Check
To custom username, docker image name and tag, edit the information in the file **.env.local**.  
To access docker hub, create a file named **.docker_pass** and place your secret password there.

## Usage
The repository is divided in 2 steps:
- build and run locally the nginx test server
- build, tag and push the docker image

To create the docker image and run locally, after specified a tag name, run:
```
$ ./main.sh <tag-name>
```

To build the image and push it, run the command by specifying a tag name:
```
$ ./push-docker-repo.sh
```

## Deploy & Test
There are two ways to check if everything works fine.
- single container using docker-compose
- swarm mode using stack deploy

In the first case, simple execute:
```
$ docker-compose up -d
```

In the second case, execute:  
- Create the swarm
```
$ docker swarm init
```
- Create the stack deploy file using the command:
```
$ docker-compose config 1>./stack-nginx-hello-world.yml
```
- deploy the stack using
```
$ docker stack deploy -c ./stack-nginx-hello-world.yml nginx-hello-world
```

