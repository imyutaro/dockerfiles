#!/usr/bin/zsh

Dockerfile=${1:-"Dockerfile-pytorch"}
USER_NAME=docker
NAME=experiment-gpu
PORT=9999
sudo docker build --build-arg USER_ID=${UID} \
                  --build-arg USER_NAME=$USER_NAME \
                  --build-arg NAME=$NAME \
                  -f $Dockerfile \
                  -t $NAME .
sudo docker run --gpus all \
                --name $NAME \
                --init \
                -p $PORT:$PORT \
                -v $PWD/:/home/$USER_NAME/ \
                -tid $NAME \
                jupyter lab --no-browser --port=$PORT --ip=0.0.0.0

