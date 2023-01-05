#!/bin/sh
cp vmlinuz-5.10.162 rootfs.cpio isoroot/boot
grub-mkrescue isoroot -o tinylinux-x86_64.iso
rm isoroot/boot/vmlinuz-5.10.162 isoroot/boot/rootfs.cpio
