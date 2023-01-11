#!/bin/bash

while getopts 'cdn:h' opt; do
  case "$opt" in
    c)
      action="create-stack"
      ;;

    d)
      action="delete-stack"
      ;;

    n)
      stackName=${OPTARG}
      ;;
   
    ?|h)
      echo "Usage: $(basename $0) [-n <the name of the stack>] [-c] (to create the stack) [-d] (to delete the stack)"
      exit 1
      ;;
  esac
done
if [[ $action -eq "create-stack" ]] ; then
     aws cloudformation $action --stack-name $stackName --template-body file://MongoTemplate.yml --parameters file://params.json
else 
     aws cloudformation $action --stack-name $stackName
fi
