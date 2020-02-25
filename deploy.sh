#!/bin/bash

kubectl create namespace kube-logging
kubectl create namespace logging 

kubectl apply -f storageclass.yml 
kubectl apply -f elasticsearch-svc.yml 
kubectl apply -f elasticsearch-statefulsets.yml 

kubectl apply -f kibana-deployment.yml 
kubectl apply -f kibana-svc.yml

kubectl apply -f fluentbit-EFK.yml 

kubectl apply -f fluentd-EFK.yml 
kubectl apply -f fluentd-headless-efk.yml



kubectl apply -f test-log-pod.yml 


