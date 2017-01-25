#!/bin/sh

ip route del default
ip route add default via 192.168.123.4
ip addr add 192.168.123.200/32 dev lo

mkdir -p /run/bird
mkdir -p /var/log/nginx

/usr/sbin/nginx
/usr/sbin/bird -c /etc/bird.d/bird.conf -s /run/bird/bird.ctl -d
