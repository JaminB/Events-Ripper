#!/bin/bash

if ! docker image inspect events-ripper:latest >/dev/null 2>&1; then
   docker build -t events-ripper .
fi

docker run --rm -v `pwd`:/work events-ripper:latest /Events-Ripper/docker/entrypoint.sh "$@"
