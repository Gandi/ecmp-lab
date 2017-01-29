#!/bin/sh

ip -6 addr add $IP6_1 dev eth0
ip -6 addr add $IP6_2 dev eth1

mkdir -p /run/bird
/usr/sbin/bird -c /etc/bird.d/bird.conf -s /run/bird/bird.ctl
/usr/sbin/bird6 -c /etc/bird.d/bird6.conf -s /run/bird/bird6.ctl -d
