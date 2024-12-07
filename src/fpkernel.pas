(* Free Pascal Headers for Linux Kernel
  * Pascal Code for kernel printk function
  * Based on work by Mazen Neifer, originally posted on
  * http://wiki.freepascal.org/linux/kernel/module_development
  * (c) Lukasz Sokol, 2011 License : GPL
  *)
 unit fpkernel;

 {$mode fpc}
 
 interface 

 const
   KERN_INFO = 'KERNEL:INFO:';
   KERN_ALERT = 'KERNEL:ALERT:';  
 
 procedure Printk(Fmt: PChar); cdecl; external name '_printk';
 
 implementation 
 
 end.
 