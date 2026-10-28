#!/bin/bash
# script for starting the main server

cd "$(dirname "$0")"
exec java -Xms1G -Xmx4G -jar fabric-jre-server_26.3.jar nogui
