#!/bin/bash
# build image 

image="ollama-agent"

set -xe

docker build "$@" -t $image:latest -f Dockerfile .

docker images | grep $image
