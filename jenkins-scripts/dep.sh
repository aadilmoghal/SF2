#!/bin/bash
# first need to go into yaml folder
cd kubernetes/
# need to create in order, first with name space creation
kubectl apply -f ns.yaml
# create nginx config file
kubectl apply -f conf.yaml
# launch up the load balancer with the serv files
kubectl create -f load-balancer.yaml 
kubectl apply -f nginx.yaml
kubectl create -f frontend-dep.yaml
# launch up the dep files
kubectl create -f frontend-cluster-serv.yaml
kubectl apply -f backend-cluster.yaml
kubectl apply -f backend-dep.yaml
