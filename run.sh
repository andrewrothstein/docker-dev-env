#!/usr/bin/env sh
CONTAINER=docker-dev-env
SESSION=${CONTAINER}-1
echo launching $SESSION
docker run -p 6022:22 \
       --name $SESSION \
       -v $HOME/.ssh:/root/.ssh:ro \
       -d \
       andrewrothstein/${CONTAINER}
