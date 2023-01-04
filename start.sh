#!/bin/bash
if ! type -p qemu-system-x86_64 > /dev/null;then
    echo "qemu-system-x86_64 not found"
    exit 1
fi

kernel=vmlinuz-4.9.330
initrd=rootfs.cpio
[ -e /dev/kvm ]&&kvm="-enable-kvm"
vga=0x344
for i in "${@}";do
    case "${i}" in
    	tcg)
    		kvm=
    		;;
		curses)
			display="-display curses"
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
			;;
    	*)
			echo "Unknown option:${i}"
			exit 1
			;;
    esac
done
cmdline="quiet vga=${vga}"
smp=4
memory=512
echo "Starting QEMU..."
qemu-system-x86_64\
	${kvm}\
    -kernel "${kernel}"\
    -initrd "${initrd}"\
    -m ${memory}\
    -append "${cmdline}"\
    -smp ${smp}\
    "${display}"
