# Simple Makefile to build docker
# __author__: tuan t. pham
DOCKER_NAME ?=neofob/port_establish
DOCKER_TAG ?=latest
DOCKERFILE_PATH ?=.
PORT_NUMBER ?=3000
# localhost inside docker container is itself; we use the docker host's hostname
REMOTE_HOST ?=$(shell hostname)


docker:
	docker build -t $(DOCKER_NAME):$(DOCKER_TAG) $(DOCKERFILE_PATH)

# Just for testing
up:
	docker run --rm -e PORT_NUMBER=$(PORT_NUMBER) -e REMOTE_HOST=$(REMOTE_HOST) $(DOCKER_NAME):$(DOCKER_TAG)

clean:
	docker rmi $(DOCKER_NAME):$(DOCKER_TAG)
