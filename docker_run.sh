#!/bin/bash

# Set Docker to use the machine
eval "$(docker-machine env default)"

# Run the server
docker run -e HURTWORLD_SERVER_STARTUP_ARGUMENTS="-batchmode -nographics -logfile /dev/stdout" -e HURTWORLD_SERVER_STARTUP_EXEC="host 12871;queryport 12881;servername Hurtworld [DOCKER];maxplayers 16;autobackupinterval 300;wipeinterval 1209600;quit 86400;addadmin 76561197990637896" -v $(pwd)/hurtworld_data:/steamcmd/hurtworld --name hurtworld-server -d didstopia/hurtworld-server:latest
docker logs -f hurtworld-server