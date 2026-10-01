#!/bin/bash

# echo "buiding..."
# go build -o output .
# echo "deploying..."
echo "deploying..."
#echo "making Directory"
ssh root@a.b.c.d "mkdir -p /opt/myapps2/"
#echo "copying files"
scp -r . root@a.b.c.d:/opt/myapps2/
#echo "files copied"
#echo "starting containers"
ssh root@a.b.c.d "cd /opt/myapps2 && docker compose up --build -d --force-recreate"
#echo "containers started successfully"
#echo "deployment completed successfully"
