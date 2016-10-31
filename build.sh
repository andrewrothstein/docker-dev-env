#!/usr/bin/env sh
docker pull andrewrothstein/docker-ansible:ubuntu_xenial
docker build -t andrewrothstein/docker-dev-env .

