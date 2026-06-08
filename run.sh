#!/bin/bash 
# run ollama in docker

set -xe

docker rm -f ollama

docker run -d \
  --restart always \
  --name ollama \
  --gpus=all \
  -v ollama:/root/.ollama \
  -p 11434:11434 \
  ollama/ollama

docker logs ollama

docker ps | grep ollama

docker exec -it ollama bash

