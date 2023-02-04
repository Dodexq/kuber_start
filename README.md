## Kuber Kind Cluster with Metallb, Ingress LoadBalancer

1) exec sh cluster_run: `./loadbalancer_myapp_argoyaml/cluster_run.sh`
2) apply Calico: `kubectl apply -f ./loadbalancer_myapp_argoyaml/calico.yaml`
3) create namespaces and apply Metallb: `sudo kubectl apply -f ./loadbalancer_myapp_argoyaml/metallb/namespace.yaml && sudo kubectl apply -f ./loadbalancer_myapp_argoyaml/metallb/namespace.yaml/metallb.yaml`
4) apply `sudo kubectl apply -f ./loadbalancer_myapp_argoyaml/metallb/metallb-config.yaml` after configure ip addr (pool can be see use sh: `./loadbalancer_myapp_argoyaml/metallb/get_docker_network.sh`)
5) apply ingress `sudo kubectl apply -f ./loadbalancer_myapp_argoyaml/ingress-deploy.yaml`