#!/bin/bash 
# run ollama in docker

set -xe

cat run.sh

docker network create agents >/dev/null 2>&1 || :
docker rm -f ollama >/dev/null || :

docker run -d \
  --name ollama \
  --network agents \
  --restart always \
  --gpus=all \
  -v ollama:/root/.ollama \
  -p 11434:11434 \
  -e OLLAMA_HOST=0.0.0.0 \
  -e OLLAMA_CONTEXT_LENGTH=256000 \
  ollama/ollama >/dev/null

docker exec ollama ollama pull gemma4:12b 

docker ps | grep ollama
echo
docker logs ollama
