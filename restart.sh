#!/usr/bin/env sh
SESSION=docker-dev-env-1
echo whacking $SESSION...
docker rm -f $SESSION
. run.sh
