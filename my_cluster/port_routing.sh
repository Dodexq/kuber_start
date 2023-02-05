#!/bin/bash
sudo iptables -t nat -A PREROUTING -p tcp --dport 4545 -j DNAT --to-destination 172.18.0.150:1080
sudo iptables -t nat -A POSTROUTING -j MASQUERADE

# or
#sudo iptables -t nat -A POSTROUTING -p tcp -d 172.18.0.150 --dport 4545 -j SNAT --to-source 192.168.56.170:4545
