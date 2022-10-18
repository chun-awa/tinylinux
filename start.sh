#!/bin/sh
if test ${DISPLAY};then
    vga=836
else
    vga=3846
fi
qemu-system-x86_64 $(test -e /dev/kvm&&echo -enable-kvm) -kernel vmlinuz-*[0] -initrd rootfs.bz2 -m 256 -append "quiet vga=${vga}" -smp 4 $(test ${DISPLAY}||echo -display curses)
