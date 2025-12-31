FROM alpine:latest
LABEL MAINTAINER="https://github.com/alihaider998/camhack"
WORKDIR /camhack/
ADD . /camhack
RUN apk add --no-cache bash ncurses curl unzip wget php 
CMD "./camhack.sh"
