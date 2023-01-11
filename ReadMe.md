this cluster was created with the goal of creating a cluster of machines with various instances inside where various docker containers exist suitable to create a sharded mongoDB cluster with the PSA configuration\n
here we find\n
2 mongos (virtual routers that direct traffic to the primary nodes)\n
2 shards (each containing a primary node, a secondary node and an arbiter used for primary node election in case of failover\n
3 config servers\n
this configuration helps increase infrastructure resilience and reduce response times \n
To use it, simply launch the cloudformation stack on aws in any region:\n
         from console: add parameters manually\n
         from cli : edit params.json with the correct values\n
this will go to create 3 instances and install the various components plus set the configuration 
