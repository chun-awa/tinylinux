# linux
小型linux initramfs,基于busybox和musl libc,用start.sh启动(需要QEMU)  
截图:  
```
Booting from ROM...
early console in extract_kernel
input_data: 0x0000000001f87276
input_len: 0x00000000004fbd8c
output: 0x0000000001000000
output_len: 0x0000000001470908
kernel_total_size: 0x0000000001152000

Decompressing Linux... Parsing ELF... done.
Booting the kernel.
Mounting /dev /proc /sys /dev/pts /dev/shm... Done
Welcome to Linux 4.9.330 x86_64!
Setting Hostname...
Starting Networking...
Installing /var/packages/core/ncurses.tar.xz...
udhcpc: started, v1.33.2
udhcpc: sending discover
udhcpc: sending select for 10.0.2.15
udhcpc: lease of 10.0.2.15 obtained, lease time 86400
Installing /var/packages/extra/bash.tar.xz...
Installing /var/packages/extra/dialog.tar.xz...
Installing /var/packages/extra/nano.tar.xz...
Installing /var/packages/extra/neofetch.tar.xz...
Uptime:32.18s
/ #
```
