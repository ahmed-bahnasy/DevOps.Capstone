#!/usr/bin/env bash

#Kubernetes cluster starting
minikube start

#show cluster running at least 1
kubectl config viwe
# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=ahmedbahnasy/capstone
# Step 2
# create a deployment from this YAML file.
kubectl create -f deploy.yml

#You can check Deployment with the following command:
kubectl get deploy,po
# kubectl run app --image=$dockerpath --port=5001


#Expose The Deployment To The Internet
kubectl expose deployment app --type="LoadBalancer"

# List kubernetes pods
kubectl get pods 

sleep 20s
#Get application pod name 
POD=$(kubectl get pods | awk '{print$1}' | grep 'node*')

#Print pod name
echo $POD 


#Forward pod to specifc port
kubectl port-forward $POD 5001:8000
