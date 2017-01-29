#!/bin/sh

ip -6 addr add $IP6 dev eth0

mkdir -p /run/bird
/usr/sbin/bird6 -c /etc/bird6.d/bird6.conf -s /run/bird/bird6.ctl
/usr/sbin/bird -c /etc/bird.d/bird.conf -s /run/bird/bird.ctl -d
