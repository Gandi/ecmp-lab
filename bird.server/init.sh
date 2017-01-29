#!/bin/sh

ip route del default
ip route add default via 192.168.123.4
ip addr add 192.168.123.200/32 dev lo
ip addr add 2009:100::200/128 dev lo

ip -6 addr add $IP6 dev eth0

mkdir -p /run/bird
mkdir -p /var/log/nginx

/usr/sbin/nginx
/usr/sbin/bird -c /etc/bird.d/bird.conf -s /run/bird/bird.ctl
/usr/sbin/bird6 -c /etc/bird6.d/bird6.conf -s /run/bird/bird6.ctl -d
