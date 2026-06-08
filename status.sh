#!/bin/bash 
# run ollama in docker

set -xe

docker logs ollama

docker ps | grep ollama

docker exec -it ollama ollama list
docker exec -it ollama ollama ps
docker exec -it ollama bash

