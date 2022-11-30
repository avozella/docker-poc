FROM nginx:stable-alpine

RUN apk update \
    && apk add vim \
    && apk add cmatrix

WORKDIR /usr/share/nginx/html/images

COPY images/ .