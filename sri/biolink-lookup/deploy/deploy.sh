#!/bin/bash

sed -i.bak \
    -e "s/DOCKER_IMAGE_VERSION/${BUILD_VERSION}/g" \
    values.yaml
rm values.yaml.bak

mv ingress.yaml templates/ingress.yaml

kubectl apply -f namespace.yaml

helm upgrade -n sri -f values.yaml biolink-lookup .
