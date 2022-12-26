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
if [ "${1}" = "tcg" ];then
	kvm=  
fi
if [ "${DISPLAY}" ];then
	vga=0x344
else
	lines=$(tput lines)
	if [ ${lines} -gt 60 ];then
		vga=0xf07
	elif [ ${lines} -gt 50 ];then
		vga=0xf01
	elif [ ${lines} -gt 43 ];then
		vga=0xf02
	elif [ ${lines} -gt 34 ];then
		vga=0xf06
	elif [ ${lines} -gt 30 ];then
		vga=0xf05
	elif [ ${lines} -gt 28 ];then
		vga=0xf03
	else
		vga=0xf00
    fi
fi
cmdline="quiet vga=${vga}"
smp=4
memory=512
if [ "${DISPLAY}" ];then
    display="gtk"
else
    display="curses"
fi

qemu-system-x86_64 ${kvm}\
    -kernel "${kernel}"\
    -initrd "${initrd}"\
    -m ${memory}\
    -append "${cmdline}"\
    -smp ${smp}\
    -display ${display}
