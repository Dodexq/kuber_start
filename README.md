## Kuber Kind Cluster with Metallb, Ingress LoadBalancer

1) exec sh cluster_run: `./my_cluster/cluster_run.sh`
2) apply Calico: `kubectl apply -f ./my_cluster/calico.yaml`
3) create namespaces and apply Metallb: `sudo kubectl apply -f ./my_cluster/metallb/namespace.yaml && sudo kubectl apply -f ./my_cluster/metallb/namespace.yaml/metallb.yaml`
4) apply `sudo kubectl apply -f ./my_cluster/metallb/metallb-config.yaml` after configure ip addr (pool can be see use sh: `./my_cluster/metallb/get_docker_network.sh`)
5) apply ingress `sudo kubectl apply -f ./my_cluster/ingress-deploy.yaml`