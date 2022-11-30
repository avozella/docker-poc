# Docker POC

This repository contains documentation related to Docker demo.

![docker](img/docker.webp?raw=true "docker")

## Examples

### Running basic container:
````sh
docker run --rm -it -p 8010:6901 -e VNC_PW=fuaqueclave --name bettoboi kasmweb/doom:1.11.0
user: kasm_user
password: fuaqueclave
````
### Running container without Dockerfile:
````sh
docker run --rm -p 8080:80 --name tommyboi nginx:stable-alpine
docker exec -it tommyboi /bin/sh
apk add cmatrix
cmatrix
````

### Running tool project:
````sh
docker build -t myapp:1.0 tool/.
docker run -d -p 8081:80 --name matute myapp:1.0
docker exec -it matute /bin/sh
cmatrix
````

### Running tool project (with Volumes):
````sh
docker run -itd -p 8083:80 -v $HOME/Documents/test:/usr/share/nginx/html/images --name nemo myapp:1.0
docker exec -it nemo /bin/sh
curl -o doge.jpg https://coolwallpapers.me/picsup/2985716-doge___mixed-wallpapers.jpg
````

### Running container from docker-compose

````sh
docker-compose up --build
````

### Removing containers (docker-compose)

````sh
docker-compose down
````

## Used docker commands
- docker run: Create a new container
- docker restart: restart one or more containers.
- docker rm: Remove one or more containers.
- docker images: List all images.
- docker image prune: Remove unused images.
- docker image rm: Remove one or more images.
- docker build: Build an image from a Dockerfile.
- docker ps: Get running containers
- docker stats container_id / container_name: Get container status
- docker inspect container_id / container_name: Get full info about the container
- -d: Detach, allows you run the container in background
- --rm: remove container automatically after exit
- -p: Set ports (host:container)
- -f: Force command

## Dockerfile commands
- FROM: Build Dockerfile based on a specified Base image.
- WORKDIR: Set the working directory. If not exist, it will be created automatically.
- EXPOSE: The container will listen on specified port at runtime.
- COPY: Copy from a source and add it to specified destination path.
- USER: Set the default user to run the instructions at runtime.
- RUN: Run specified commands while building the image.
- CMD: Run specified command at runtime.
- ENTRYPOINT: Used to set arguments on runtime.

## Glossary
- Docker: Platform that allows to build, test and deploy applications.
- Colima: Acronym for Containers in Lima.
- Lima: Linux Virtual machine (mostly on macOS) allowing automatic file sharing, port forwarding and containerd.
- containerd: Container daemon

