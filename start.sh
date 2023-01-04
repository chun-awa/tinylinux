#!/bin/bash
if ! type -p qemu-system-x86_64 > /dev/null;then
    echo "qemu-system-x86_64 not found"
    exit 1
fi

kernel=vmlinuz-4.9.330
initrd=rootfs.cpio
if [ -e /dev/kvm ];then
    kvm="-enable-kvm"
fi
vga=0x344
cmdline="quiet"
smp=4
memory=1024
for i in "${@}";do
    case "${i}" in
    	tcg)
    		kvm=
    		;;
		vga_ask)
			vga=ask
			;;
    	*)
			echo "Unknown option:${i}"
			exit 1
			;;
    esac
done
cmdline+=" vga=${vga}"
echo "Starting QEMU..."
qemu-system-x86_64 "${kvm}" \
    -kernel "${kernel}" \
    -initrd "${initrd}" \
    -m "${memory}" \
    -append "${cmdline}" \
    -smp "${smp}" \
