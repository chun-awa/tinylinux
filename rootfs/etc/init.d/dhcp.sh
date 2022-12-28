#!/bin/sh
. /etc/init.d/rc.lib
ip addr add $ip/$mask dev $interface
[ "$router" ] && ip route add default via $router dev $interface
if [ "$ip" ];then
    log_info "DHCP configuration for device ${interface}"
    log_info "IP: ${ip}"
    log_info "mask: ${mask}"
    log_info "router: ${router}"
fi
