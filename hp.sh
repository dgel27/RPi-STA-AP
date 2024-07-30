#!/bin/bash

# /usr/sbin/hp.sh

iw dev wlan0 interface add uap0 type __ap
ip link set dev uap0 address 12:34:56:78:90:12
ip addr add 192.168.77.1/24 dev uap0
ip link set dev uap0 up

hostapd /etc/hostapd/hostapd.conf -B
busybox udhcpd /etc/udhcpd.conf
