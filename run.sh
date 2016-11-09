#!/usr/bin/env sh
docker run -p 6022:22 \
       --name docker-dev-env \
       -v $HOME/.ssh:/root/.ssh:ro \
       -d \
       docker-dev-env
