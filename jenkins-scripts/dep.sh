#!/bin/bash

# kubectl delete all --all -n SFIA2
cd ../kubernetes/
# kubectl delete pods --all -n sfia2-namespace
kubectl apply -f ns.yaml
kubectl apply -f conf.yaml
kubectl create -f load-balancer.yaml 
kubectl apply -f nginx.yaml
kubectl create -f frontend-dep.yaml
kubectl create -f frontend-cluster-serv.yaml
kubectl apply -f backend-cluster.yaml
kubectl apply -f backend-dep.yaml
kubectl describe service load-balancer -n sfia2-namespace
