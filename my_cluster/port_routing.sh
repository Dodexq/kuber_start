#!/bin/bash
sudo iptables -t nat -A PREROUTING -p tcp --dport 10080 -j DNAT --to-destination 172.18.0.100:80
sudo iptables -t nat -A PREROUTING -p tcp --dport 10443 -j DNAT --to-destination 172.18.0.100:443
sudo iptables -t nat -A POSTROUTING -j MASQUERADE
