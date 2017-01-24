#!/bin/sh

ip route del default
ip route add default via 192.168.122.4

mkdir -p /run/bird
/usr/sbin/bird -c /etc/bird.d/bird.conf -s /run/bird/bird.ctl -d
