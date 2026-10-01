#!/bin/bash

# echo "buiding..."
# go build -o output .
# echo "deploying..."
echo "deploying..."
#echo "making Directory"
ssh root@44.201.254.115 "mkdir -p /opt/myapps2/"
#echo "copying files"
scp -r . root@44.201.254.115:/opt/myapps2/
#echo "files copied"
#echo "starting containers"
ssh root@44.201.254.115 "cd /opt/myapps2 && docker compose up --build -d --force-recreate"
#echo "containers started successfully"
#echo "deployment completed successfully"