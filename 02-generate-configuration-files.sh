#!/bin/bash

## RUN ON MASTER 1

export MASTER1_UUID=$(uuidgen -r)
export MASTER2_UUID=$(uuidgen -r)
export WORKER1_UUID=$(uuidgen -r)
export WORKER2_UUID=$(uuidgen -r)
export LB_UUID=$(uuidgen -r)



cat > master-1.ifcfg-enp0s3 <<EOF
TYPE=Ethernet
PROXY_METHOD=none
BROWSER_ONLY=no
BOOTPROTO=none
DEFROUTE=yes
IPV4_FAILURE_FATAL=no
IPV6INIT=yes
IPV6_AUTOCONF=yes
IPV6_DEFROUTE=yes
IPV6_FAILURE_FATAL=no
NAME=enp0s3
UUID=$MASTER1_UUID
DEVICE=enp0s3
ONBOOT=yes
IPADDR=10.10.10.11
PREFIX=24
GATEWAY=10.10.10.1
DNS1=192.168.13.149
DOMAIN=bulldiamond.net
EOF

cat > master-2.ifcfg-enp0s3 <<EOF
TYPE=Ethernet
PROXY_METHOD=none
BROWSER_ONLY=no
BOOTPROTO=none
DEFROUTE=yes
IPV4_FAILURE_FATAL=no
IPV6INIT=yes
IPV6_AUTOCONF=yes
IPV6_DEFROUTE=yes
IPV6_FAILURE_FATAL=no
NAME=enp0s3
UUID=$MASTER2_UUID
DEVICE=enp0s3
ONBOOT=yes
IPADDR=10.10.10.12
PREFIX=24
GATEWAY=10.10.10.1
DNS1=192.168.13.149
DOMAIN=bulldiamond.net
EOF

cat > worker-1.ifcfg-enp0s3 <<EOF
TYPE=Ethernet
PROXY_METHOD=none
BROWSER_ONLY=no
BOOTPROTO=none
DEFROUTE=yes
IPV4_FAILURE_FATAL=no
IPV6INIT=yes
IPV6_AUTOCONF=yes
IPV6_DEFROUTE=yes
IPV6_FAILURE_FATAL=no
NAME=enp0s3
UUID=$WORKER1_UUID
DEVICE=enp0s3
ONBOOT=yes
IPADDR=10.10.10.21
PREFIX=24
GATEWAY=10.10.10.1
DNS1=192.168.13.149
DOMAIN=bulldiamond.net
EOF

cat > worker-2.ifcfg-enp0s3 <<EOF
TYPE=Ethernet
PROXY_METHOD=none
BROWSER_ONLY=no
BOOTPROTO=none
DEFROUTE=yes
IPV4_FAILURE_FATAL=no
IPV6INIT=yes
IPV6_AUTOCONF=yes
IPV6_DEFROUTE=yes
IPV6_FAILURE_FATAL=no
NAME=enp0s3
UUID=$WORKER2_UUID
DEVICE=enp0s3
ONBOOT=yes
IPADDR=10.10.10.22
PREFIX=24
GATEWAY=10.10.10.1
DNS1=192.168.13.149
DOMAIN=bulldiamond.net
EOF

cat > lb.ifcfg-enp0s3 <<EOF
TYPE=Ethernet
PROXY_METHOD=none
BROWSER_ONLY=no
BOOTPROTO=none
DEFROUTE=yes
IPV4_FAILURE_FATAL=no
IPV6INIT=yes
IPV6_AUTOCONF=yes
IPV6_DEFROUTE=yes
IPV6_FAILURE_FATAL=no
NAME=enp0s3
UUID=$LB_UUID
DEVICE=enp0s3
ONBOOT=yes
IPADDR=10.10.10.30
PREFIX=24
GATEWAY=10.10.10.1
DNS1=192.168.13.149
DOMAIN=bulldiamond.net
EOF