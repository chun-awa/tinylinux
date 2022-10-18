# linux
小型linux initramfs,基于busybox和musl libc,用start.sh启动(需要QEMU)  
截图:  
```
Decompressing Linux... Parsing ELF... done.                                                                                             
Booting the kernel.                                                                                                                     
Mounting /dev /proc /sys /dev/pts /dev/shm... Done                                                                                      
Welcome to Linux 4.9.330 x86_64!                                                                                                        
Setting Hostname...                                                                                                                     
Starting Networking...                                                                                                                  
Installing /var/packages/core/ncurses.tar.xz...                                                                                         
udhcpc: started, v1.33.2                                                                                                                
udhcpc: sending discover                                                                                                                
Installing /var/packages/extra/bash.tar.xz...                                                                                           
Installing /var/packages/extra/dialog.tar.xz...                                                                                         
Installing /var/packages/extra/nano.tar.xz...                                                                                           
Installing /var/packages/extra/neofetch.tar.xz...                                                                                       
Uptime:1.15s                                                                                                                            
/ # udhcpc: sending discover                                                                                                            
udhcpc: sending select for 10.0.2.15                                                                                                    
udhcpc: lease of 10.0.2.15 obtained, lease time 86400                                                                                   
neofetch                                                                                                                                
        #####           root@linux                                                                                                      
       #######          ----------                                                                                                      
       ##O#O##          OS: Linux 4.9.330 x86_64                                                                                        
       #######          Host: KVM/QEMU (Standard PC (i440FX + PIIX, 1996) pc-i4                                                         
     ###########        Kernel: 4.9.330                                                                                                 
    #############       Uptime: 8 secs                                                                                                  
   ###############      Shell: ash                                                                                                      
   ################     Terminal: rcS                                                                                                   
  #################     CPU: QEMU Virtual version 2.5+ (4) @ 2.295GHz                                                                   
#####################   Memory: 43MiB / 236MiB                                                                                          
#####################                                                                                                                   
  #################                                                                                                                     
                                                                                                                                        
                                                                                                                                        
/ #  
```
