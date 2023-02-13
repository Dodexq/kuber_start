#!/bin/bash
# sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j DNAT --to-destination 192.168.56.170:8085
# sudo iptables -t nat -A POSTROUTING -p tcp -d 192.168.56.170 --dport 8085 -j SNAT --to-source 0.0.0.0:80


sudo iptables -t nat -A PREROUTING -i vboxnet0 -p tcp -m tcp --dport 8085 -j DNAT --to-destination 172.18.0.100:80 
sudo iptables -t nat -A POSTROUTING -o vboxnet0 -j SNAT --to-source 192.168.56.170:8085


#iptables -t nat -A PREROUTING -p tcp --dport 10080 -j DNAT --to-destination 172.18.0.100:80
#iptables -t nat -A PREROUTING -p tcp --dport 10443 -j DNAT --to-destination 172.18.0.100:443
#sudo iptables -t nat -A POSTROUTING -j MASQUERADE
