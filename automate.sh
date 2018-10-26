#!/bin/sh
kubectl create -f ./secrets.yml
kubectl create -f ./mysql-compose.yml
kubectl create -f ./mysql-service.yml
kubectl create -f ./nodejs-mysql-deployment.yml
kubectl create -f ./nodejs-service.yml
kubectl get services
minikube service spring-service --url
