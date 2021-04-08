#!/bin/bash

# kubectl delete all --all -n SFIA2
cd kubernetes/
kubectl delete pods --all -n SFIA2
kubectl apply -f ns.yaml
kubectl apply -f conf.yaml
kubectl apply -f load-balancer.yaml 
kubectl apply -f nginx.yaml
kubectl apply -f frontend-dep.yaml
kubectl apply -f frontend-cluster-serv
kubectl apply -f backend-cluster.yaml
kubectl apply -f backend-dep.yaml
kubectl describe service load-balancer -n SFIA2
