 /* Free Pascal Demo Kernel Module
  * c code that is linked into Pascal after compile - needed for symbols
  * Based on work by Mazen Neifer, originally posted on
  * http://wiki.freepascal.org/linux/kernel/module_development
  * Stripped down to bare minimum needed for usable Hello World!
  * Some definitions also rearranged.
  * (c) Lukasz Sokol, 2011 License : GPL
  */
 
 #include <linux/module.h> 
 
 MODULE_DESCRIPTION("Test Module written using FPC");
 MODULE_AUTHOR("Some Programmer");
 MODULE_LICENSE("GPL");