#!/bin/bash

kubectl apply -f namespace.yaml

helm upgrade -n sri -f values.yaml biolink-lookup .
