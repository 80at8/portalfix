#!/bin/bash
cd customer_portal/
docker-compose down --remove-orphans
cp -R deploy deploy.bak
patch -s -p0 < 502fix.patch 
docker-compose build --no-cache .
docker-compose up -d
