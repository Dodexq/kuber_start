#!/bin/bash
sudo kubectl create namespace argocd
sudo kubectl apply -n argocd -f ./argocd_v2.6.1.yaml
echo "Sleep 10 sec"
sleep 10 
sudo kubectl apply -n argocd -f ./argocd-config.yaml