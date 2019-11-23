# Dockerfiles for deep learning experiments.

## CPU ver

Using `docker-compose`.

* Dockerfile-python
  * Base image is python3.
* docker-compose.yml
  * Set options for docker-compose up(docker run).
* start.sh
  * Shell script for `docker-compose up`.

## GPU ver

I want to use docker-compose but `docker-compose` doesn't support gpus option,
so I use `docker build` and `docker run`.

* Dockerfile-nvidia
  * Base image is nvidia.
* Dockerfile-pytorch
  * Base image is pytorch.
* start\_gpu.sh
  * Shell script for `docker build` and `docker run`.

