#!/bin/bash


sudo iptables -t nat -A POSTROUTING -t nat -p tcp -m tcp -s 172.18.0.100 --sport 1080 -j SNAT --to-source 0.0.0.0
sudo iptables -A FORWARD -m state -p tcp -d 172.18.0.100 --dport 1080 --state NEW,ESTABLISHED,RELATED -j ACCEPT
sudo iptables -t nat -A PREROUTING -p tcp --dport 1080 -j DNAT --to-destination 172.18.0.100:1080



#sudo iptables -t nat -A POSTROUTING -p tcp -d 172.18.0.150 --dport 1080 -j SNAT --to-source 192.168.56.170:1080
#sudo iptables -t nat -A POSTROUTING -j MASQUERADE

# sudo iptables -t nat -A PREROUTING -p tcp --dport 8080 -j DNAT --to-destination 172.18.0.100:80
# sudo iptables -A FORWARD -p tcp -d 172.18.0.100 --dport 80 -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT
# sudo iptables -t nat -A POSTROUTING -t nat -p tcp -m tcp -s 172.18.0.100 --sport 80 -j SNAT --to-source 192.168.56.170


#sudo iptables -t nat -A PREROUTING -p tcp --dport 8043 -j DNAT --to-destination 172.18.0.100:443

#sudo iptables -t nat -A POSTROUTING -j MASQUERADE

# # sudo iptables -t nat -A PREROUTING -i enp0s8 -p tcp -m tcp --dport 8085 -j DNAT --to-destination 172.18.0.100:80 
# # sudo iptables -t nat -A POSTROUTING -o enp0s8 -j SNAT --to-source 0.0.0.0
# # iptables -t nat -A POSTROUTING -j MASQUERADE


# # iptables -t nat -A PREROUTING -p tcp -d 0.0.0.0 --dport 8085 -j DNAT --to-destination 172.18.0.100:80
# # iptables -A FORWARD -i eth0 -d 10.10.2.200 -p tcp --dport 80 -j ACCEPT

# sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j DNAT --to-destination 172.18.0.100:80
# sudo iptables -A FORWARD -m state -p tcp -d 172.18.0.100 --dport 80 --state NEW,ESTABLISHED,RELATED -j ACCEPT
# sudo iptables -t nat -A POSTROUTING -t nat -p tcp -m tcp -s 172.18.0.100 --sport 80 -j SNAT --to-source 0.0.0.0