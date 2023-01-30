#!/bin/bash
sudo iptables -t nat -A  DOCKER -p tcp --dport 4545 -j DNAT --to-destination 172.18.0.150:4545
