#!/usr/bin/env sh
UPSTREAM_CONTAINER=andrewrothstein/docker-ansible:ubuntu_xenial
docker pull $UPSTREAM_CONTAINER
docker build -t andrewrothstein/docker-dev-env .

