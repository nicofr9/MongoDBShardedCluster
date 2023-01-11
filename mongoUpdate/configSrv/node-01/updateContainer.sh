#!/bin/bash
docker kill mongo-config-01
docker rm mongo-config-01
docker-compose up -d 