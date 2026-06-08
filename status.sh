#!/bin/bash 
# run ollama in docker

set -xe

docker logs ollama
echo
docker ps | grep ollama
echo
docker exec -it ollama ollama list
echo
docker exec -it ollama ollama ps
echo
docker exec -it ollama bash

