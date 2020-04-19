#!/usr/bin/zsh -e

export Dockerfile=${1:-"Dockerfile-python"}
export USER_ID=${UID}
export GROUP_ID=${GID}
export PORT=${PORT:-8888}
export USER_NAME=docker
sudo -E docker-compose down --rmi all
