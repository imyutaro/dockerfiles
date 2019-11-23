# Dockerfiles for deep learning experiments.

## CPU ver

Using `docker-compose`.

* Dockerfile-python
  * Dockerfile based on python.
* docker-compose.yml
* start.sh
  * shell script for docker-copose up.

## GPU ver

I want to use docker-compose but `docker-compose` doesn't support gpus option,
so I use `docker build` and `docker run`.

* Dockerfile-nvidia
  * Dockerfile based on nvidia images
* Dockerfile-pytorch
  * Dockerfile based on pytorch images
* start\_gpu.sh
  * shell script for docker build and run.
