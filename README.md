# kuber laboratory work

1) exec sh cluster_run: `./my_cluster/cluster_run.sh`
2) apply Calico: `kubectl apply -f ./my_cluster/calico-3.25.yaml`
3) apply Metallb: `kubectl apply -f ./my_cluster/metallb/metallb-native.yaml`
4) apply `kubectl apply -f ./my_cluster/metallb/metallb-new-config.yaml` after configure ip addr (pool can be see use sh: `./my_cluster/metallb/get_docker_network.sh`)
5) apply ingress `kubectl apply -f ./my_cluster/ingress-deploy.yaml`
6) apply cert-manager `kubectl apply -f ./my_cluster/cert-manager/cert-manager.yaml`
7) in folder `./my_cluster/cert-manager/acme-prod.yaml` & `./my_cluster/cert-manager/acme-staging.yaml` - for testing
8) apply my deployment and ingress url redirect `kubectl apply -f ./my_cluster/ingress_deployment_host_tls.yaml`
9) apply argocd ingress svc `kubectl apply -f ./my_cluster/ingress_argocd_svc.yaml`