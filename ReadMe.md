this cluster was created with the goal of creating a set of machines with various containerized instances that interact for have an high availability mongodb Database
here we find
2 mongos (virtual routers that direct traffic to the primary nodes),
2 shards (each containing a primary node, a secondary node and an arbiter used for primary node election in case of failover,
3 config servers.
This configuration helps increase infrastructure resilience and reduce response times.
To use it, simply launch the cloudformation stack on aws in any region, 
         from console: add parameters manually, from cli : edit params.json with the correct values.
This will go to create 3 instances and install the various components plus set the configuration 

*working on* : next step is to move the various containers to different instances 


*soon*: ->

i'm going to to upgrade a mongo cluster with 4.4.10-focal version for skip to the 5.0 version 
