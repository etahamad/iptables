#!/bin/bash

sudo iptables -F

sudo iptables -A INPUT -p tcp -m multiport --dports 22,80,443 -j ACCEPT
sudo iptables -A INPUT -j DROP

sudo iptables-save > /etc/iptables/rules.v4
