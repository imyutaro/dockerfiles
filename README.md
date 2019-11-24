# Dockerfiles for deep learning experiments.

## CPU ver

Using `docker-compose`.

* Dockerfile-python
  * Base image is python3.
* docker-compose.yml
  * Set options for docker-compose up(docker run).
* start.sh
  * Shell script for `docker-compose up`.

```bash
# Build and run docker container
./start.sh Dockerfile_name
# Enter a docker container
docker exec -it experiment zsh

# If you want to use specific container and image name
NAME=cpu ./start.sh
# If you want to use specific port (default port 8888)
PORT=9000 ./start.sh
```

## GPU ver

I want to use docker-compose but `docker-compose` doesn't support gpus option,
so I use `docker build` and `docker run`.

* Dockerfile-nvidia
  * Base image is nvidia.
* Dockerfile-pytorch
  * Base image is pytorch.
* start\_gpu.sh
  * Shell script for `docker build` and `docker run`.

```bash
# Build and run docker container
./start_gpu.sh Dockerfile_name
# Enter a docker container
docker exec -it experiment-gpu zsh

# If you want to use specific container and image name
NAME=gpu ./start.sh
# If you want to use specific port (default port 8888)
PORT=9000 ./start.sh
```
