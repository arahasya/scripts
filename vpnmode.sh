#!/bin/bash

readonly arahasya="/etc/pihole/arahasya.conf"



sudo iptables -D POSTROUTING -o eth0 -j MASQUERADE
sudo iptables -D POSTROUTING -o tun0 -j MASQUERADE
sudo iptables -t nat -A POSTROUTING -o tun0 -j MASQUERADE
sudo sh -c "iptables-save > /etc/iptables.ipv4.nat"
