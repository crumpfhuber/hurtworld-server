#!/bin/bash

# Run the server
docker run -p 12871:12871/tcp -p 12871:12871/udp -p 12881:12881/udp -e HURTWORLD_SERVER_STARTUP_ARGUMENTS="-batchmode -nographics -logfile /dev/stdout" -e HURTWORLD_SERVER_STARTUP_EXEC="host 12871;queryport 12881;servername Hurtworld [DOCKER];maxplayers 16;autobackupinterval 300;wipeinterval 1209600;quit 86400;addadmin 76561197990637896" -v $(pwd)/hurtworld_data:/steamcmd/hurtworld --name hurtworld-server -d didstopia/hurtworld-server:latest
docker logs -f hurtworld-server