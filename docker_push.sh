#!/bin/bash

# Set Docker to use the machine
eval "$(docker-machine env default)"

docker tag -f didstopia/hurtworld-server:latest didstopia/hurtworld-server:latest
docker push didstopia/hurtworld-server:latest