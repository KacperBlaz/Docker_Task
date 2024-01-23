FROM ubuntu:22.04 as builder

ARG DEBIAN_FRONTEND=noninteractive
ARG PHP_VERSION=8.1

RUN apt-get update && apt-get install --no-install-recommends apache2 -y


ENTRYPOINT ["nginx", "-g", "daemon off;"]