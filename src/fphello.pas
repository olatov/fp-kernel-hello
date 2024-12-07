{
  http://wiki.freepascal.org/linux/kernel/module_development
}

unit FPHello;

{$mode fpc}

interface

implementation

uses FPKernel; 

{$LINK kernel_module_info}

{This function is called when the module is loaded}
function init_module: Integer; cdecl; export;
begin
  Printk(KERN_INFO + 'Hello from Free Pascal!' + #10 + #0);
  init_module := 0;
end;
 
{This function is called when the module is unloaded}
procedure cleanup_module; cdecl; export;
begin
  Printk(KERN_INFO + 'Bye-bye!' + #10 + #0);
end;
 
end.
