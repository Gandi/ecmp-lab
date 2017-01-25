#!/bin/sh

mkdir -p /run/bird
/usr/sbin/bird -c /etc/bird.d/bird.conf -s /run/bird/bird.ctl -d
