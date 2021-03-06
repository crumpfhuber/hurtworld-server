## Hurtworld server that runs inside a Docker container

*Show your support for this project by signing up for a [free Bitrise account!](https://app.bitrise.io?referrer=02c20c56fa07adcb)*

NOTE: This image will always install/update to the latest steamcmd and Hurtworld server, all you have to do to update your server is to redeploy the container.

Also note that the entire /steamcmd/hurtworld can be mounted on the host system.

# How to run the server
1. Set the ```HURTWORLD_SERVER_STARTUP_ARGUMENTS``` environment variable to match your preferred server arguments (defaults are set to ```"-batchmode -nographics -logfile /dev/stdout"```, note how we're logging to stdout)
2. Also set the ```HURTWORLD_SERVER_STARTUP_EXEC``` environment variable to match your preferred arguments (defaults are set to ```"host 12871;queryport 12881;servername Hurtworld [DOCKER];maxplayers 16"```)
3. Optionally mount ```/steamcmd/hurtworld``` somewhere on the host or inside another container to keep your data safe
4. Run the container and enjoy!
