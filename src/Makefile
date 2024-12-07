 # https://wiki.freepascal.org/linux/kernel/module_development
 
obj-m   := fpkmhello.o
fpkmhello-objs := module_include.o system.o fphello.o 
KDIR    := /lib/modules/$(shell uname -r)/build
PWD     := $(shell pwd)
 
default: fphello.o
	$(MAKE) -C $(KDIR) M=$(PWD) modules

system.o: system.pas
	fpc system
	touch .system.o.cmd	 # silly hack to trick the dependency tracking.
 
fphello.o: system.o fpkernel.pas fphello.pas
	fpc fphello
	touch .fphello.o.cmd  # again
   
clean:
	${RM} *.ko *.mod.c *.o *.ppu Module.symvers .*.cmd *.mod
	${RM} -r .tmp_versions makeout modules.order
