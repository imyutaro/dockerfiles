#!/usr/bin/zsh -e

Dockerfile=${1:-Dockerfile-pytorch}
NAME=${NAME:-experiment-gpu}
PORT=${PORT:-8888}
USER_NAME=docker
sudo docker build --build-arg USER_ID=${UID} \
                  --build-arg USER_NAME=$USER_NAME \
                  --build-arg NAME=$NAME \
                  -f $Dockerfile \
                  -t $NAME .
sudo docker run --gpus all \
                --name $NAME \
                --init \
                -p $PORT:$PORT \
                -v $PWD/:/home/$USER_NAME/$NAME/ \
                -tid $NAME \
                jupyter lab --no-browser --port=$PORT --ip=0.0.0.0

