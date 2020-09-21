#!/bin/bash

docker swarm init && \
docker stack deploy -c nginx-stack.yaml my-nginx