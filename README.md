# Docker POC

This repository contains documentation related to Docker demo.

## Examples

### Running basic container

````sh
docker run --rm -d -p 8080:80 nginx:stable-alpine
````

### Running container from Dockerfile

````sh
docker build -t imagename:version .
docker run -p 8080:80 imagename:version
````

## Used docker commands
- docker run container: Create a new container
- docker restart container: restart one or more containers.
- docker rm container: Remove one or more containers.
- docker images: List all images.
- docker image prune: Remove unused images.
- docker image rm: Remove one or more images.
- docker build: Build an image from a Dockerfile.

- -d: Detach, allows you run the container in background
- --rm: remove container automatically after exit
- -p: Set ports (host:container)


## Dockerfile commands
- FROM: Build Dockerfile based on a specified Base image.
- WORKDIR: Set the working directory. If not exist, it will be created automatically.
- EXPOSE: The container will listen on specified port at runtime.
- COPY: Copy from a source and add it to specified destination path.
- USER: Set the default user to run the instructions at runtime.
- RUN: Run specified commands while building the image.
- CMD: Run specified command at runtime.
- ENTRYPOINT: 
comando para pasar argument

## Glossary
- Docker: Platform that allows to build, test and deploy applications.
- Colima: Acronym for Containers in Lima.
- Lima: Linux Virtual machine (mostly on macOS) allowing automatic file sharing, port forwarding and containerd.
- containerd: Container daemon

