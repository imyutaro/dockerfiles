#!/usr/bin/zsh

Dockerfile=${1:-"Dockerfile-python"}
export Dockerfile=${Dockerfile}
export USER_ID=${UID}
export GROUP_ID=${GID}
export USER_NAME=docker
sudo -E docker-compose up -d --build
