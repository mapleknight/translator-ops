#!/bin/bash

mv ingress.yaml templates/ingress.yaml

kubectl apply -f namespace.yaml

helm upgrade -n sri -f values.yaml biolink-lookup .
