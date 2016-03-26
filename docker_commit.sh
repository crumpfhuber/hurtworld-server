#!/bin/bash

# Set Docker to use the machine
eval "$(docker-machine env default)"

docker commit hurtworld-server didstopia/hurtworld-server:latest
