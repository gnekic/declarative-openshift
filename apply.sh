#!/bin/bash


if ! [[ $1 ]]; then
  echo "You must provide project to bootstrap" 
  exit 1 
fi

PROJECT=$1

oc apply -Rf ./${PROJECT}/ --prune -l example.com/project=${PROJECT}


