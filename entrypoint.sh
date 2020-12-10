#!/bin/bash

export CONFIG=$client_config

echo ${CONFIG} | base64 -d -w 0 > /etc/openvpn/ovpn.conf

cat /etc/openvpn/ovpn.conf

cd /etc/openvpn && /usr/sbin/openvpn --config *.conf --script-security 2 --up /usr/local/bin/sockd.sh
