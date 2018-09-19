#!/bin/bash -x

docker -H 10.0.109.150 stop chatapp
docker -H 10.0.109.150 rmi --force chatapp:$BUILD

