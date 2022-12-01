#!/bin/sh
ip addr add $ip/$mask dev $interface
[ "$router" ] && ip route add default via $router dev $interface
