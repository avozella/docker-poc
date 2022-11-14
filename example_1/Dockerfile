FROM nginx:stable-alpine

RUN apk update \
    && apk add vim \
    && apk add cmatrix

WORKDIR /usr/share/nginx/html/images

COPY images/ .

# docker run --rm -d -p 8081:80 example_1:latest