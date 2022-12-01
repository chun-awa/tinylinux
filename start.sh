#!/bin/bash
if ! type -p qemu-system-x86_64 > /dev/null;then
    echo "qemu-system-x86_64 not found"
    exit 1
fi

kernel=vmlinuz-4.9.330
initrd=rootfs.bz2
if [ -e /dev/kvm ];then
    kvm="-enable-kvm"
else
	kvm=
fi
cmdline="vga=ask"
smp=4
memory=256
if [ "${DISPLAY}" ];then
    display="gtk"
    serial="stdio"
else
    display="curses"
    serial="null"
fi

qemu-system-x86_64 ${kvm}\
    -kernel "${kernel}"\
    -initrd "${initrd}"\
    -m ${memory}\
    -append "${cmdline}"\
    -smp ${smp}\
    -display ${display}\
    -serial ${serial}
