#!/bin/bash
create="create-stack"
while getopts 'c:d:h' opt; do
  case "$opt" in
    c)
      stackName=${OPTARG}
      aws cloudformation create-stack --stack-name $stackName --template-body file://MongoTemplate.yml --parameters file://params.json
      ;;
    d)
      stackName=${OPTARG}
      aws cloudformation delete-stack --stack-name $stackName

      ;;
   
    ?|h)
      echo "Usage: $(basename $0)  [-c <stack name> ] (to create the stack) [-d <stack name>] (to delete the stack)"
      exit 1
      ;;
  esac
done

