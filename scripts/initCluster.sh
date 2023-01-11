#!/bin/bash
docker-compose exec configsvr01 sh -c "mongosh < /scripts/init-configserver.js"
docker-compose exec shard01-a sh -c "mongosh < /scripts/init-shard01.js"
docker-compose exec shard02-a sh -c "mongosh < /scripts/init-shard02.js"
docker exec -it shard-01-node-a bash -c "echo 'rs.addArb(\""shard01-x:27017\"")' | mongosh --port 27017"
docker exec -it shard-02-node-a bash -c "echo 'rs.addArb(\""shard02-x:27017\"")' | mongosh --port 27017"
docker-compose exec router01 sh -c "mongosh < /scripts/init-router.js"
docker exec -it  bash -c "echo 'rs.addArb(\""shard02-x:27017\"")' | mongosh --port 27017"
docker exec -it router-01 bash -c "echo 'sh.status()' | mongosh --port 27017"