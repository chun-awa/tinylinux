#!/bin/sh
qemu-system-x86_64 $(test -e /dev/kvm&&echo -enable-kvm) -kernel vmlinuz-*[0] -initrd rootfs.bz2 -m 256 -append "quiet" -smp 4 -display curses
