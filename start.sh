#!/bin/bash

mkdir /apps
mkdir /apps/data
mkdir /apps/data/mongodb1
#mkdir /hdd/data/mongodb2
#mkdir /hdd/data/mongodb3

docker run -i -t -p 27017:27017 -d --name mongodb1 -v /apps/data/mongodb1:/data/db n3nus/mongodb:v1
#docker run -i -t -p 27018:27017 -d --name mongodb2 -v /hdd/data/mongodb2:/data/db n3nus/mongodb:v1
#docker run -i -t -p 27019:27017 -d --name mongodb3 -v /hdd/data/mongodb3:/data/db n3nus/mongodb:v1

