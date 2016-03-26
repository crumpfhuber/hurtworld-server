#!/bin/bash

# Install/update steamcmd
echo "Installing/updating steamcmd.."
curl -s http://media.steampowered.com/installer/steamcmd_linux.tar.gz | tar -v -C /steamcmd -zx

# Install/update Hurtworld from install.txt
echo "Installing/updating Hurtworld.."
bash /steamcmd/steamcmd.sh +runscript /install.txt

# Copy necessary files
cp /steamcmd/hurtworld/linux64/steamclient.so  /steamcmd/hurtworld/Hurtworld_Data/Plugins/x86_64/steamclient.so
cp /steamcmd/hurtworld/steamclient.so /steamcmd/hurtworld/Hurtworld_Data/Plugins/x86/steamclient.so

# Setup paths and run the server
echo "Starting Hurtworld.."
cd /steamcmd/hurtworld
./Hurtworld.x86_64 ${HURTWORLD_SERVER_STARTUP_ARGUMENTS} -exec "${HURTWORLD_SERVER_STARTUP_EXEC}"
