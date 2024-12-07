# FP Hello Linux kernel module

## References
- https://wiki.lazarus.freepascal.org/linux/kernel/module_development
- https://wiki.osdev.org/Pascal_Bare_Bones

## Specs
Tested on Debian 12, kernel 6.1.0-28-amd64, FPC 3.3.1.

Make sure you have Free Pascal compiler, the kernel build tools, and kernel headers installed.

```
sudo apt install fpc build-essential linux-headers-$(uname -r)
```

## Usage
```
$ cd src

$ make
...
make[1]: Leaving directory '/usr/src/linux-headers-6.1.0-28-amd64'

$ sudo insmod fpkmhello.ko

$ sudo dmesg
...
[10388.929879] KERNEL:INFO:Hello from Free Pascal!

$ lsmod | grep fpkmhello
fpkmhello              28672  0

$ sudo rmmod fpkmhello

$ sudo dmesg
...
[10388.929879] KERNEL:INFO:Hello from Free Pascal!
[10421.320454] KERNEL:INFO:Bye-bye!
```
