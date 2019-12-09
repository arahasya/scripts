#!/bin/bash

stat="$(nordvpn status)"
status=$(echo $stat | grep -o -P '(?<=Status:).*(?=Current server:)')
server=$(echo $stat | grep -o -P '(?<=Current server:).*(?=Country:)')
country=$(echo $stat | grep -o -P '(?<=Country:).*(?=City:)')
city=$(echo $stat | grep -o -P '(?<=City:).*(?=Your new IP:)')
ip=$(echo $stat | grep -o -P '(?<=Your new IP:).*(?=Current Technology:)')
pro=$(echo $stat | grep -o -P '(?<=Current Technology:).*(?=Transfer)')
transfer=$(echo $stat | grep -o -P '(?<=Transfer:).*(?=Uptime)')
uptime=$(echo $stat | grep -o -P '(?<=Uptime:).*(?=seconds)')
echo $stat >> /opt/pihole/arahasya/status.txt
echo $status $server $country $city $ip $pro $transfer $uptime >> /opt/pihole/arahasya/status.txt
