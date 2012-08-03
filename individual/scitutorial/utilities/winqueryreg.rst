====
"winqueryreg"
====

Scilab Function Last update : 05/01/2005
**winqueryreg** - Get item from Microsoft Windows registry



Calling Sequence
~~~~~~~~~~~~~~~~

value = winqueryreg('name', 'rootkey','subkey')
value = winqueryreg('rootkey', 'subkey','valname')
value = winqueryreg('rootkey','subkey')




Description
~~~~~~~~~~~

value = winqueryreg('name', 'rootkey', 'subkey') returns the key names
in **rootkey\subkey** in a matrix of strings. The first argument is
the literal quoted string, 'name'.

If the value retrieved from the registry is a string, winqueryreg
returns a string. If the value is a 32-bit integer, winqueryreg
returns the value as an integer (int32).

value = winqueryreg('rootkey', 'subkey', 'valname') returns the value
for key valname in **rootkey\subkey** .

value = winqueryreg('rootkey', 'subkey') returns a value in
**rootkey\subkey** that has no value name property.

**Note** : The literal name argument and the rootkey argument are
case-sensitive. The subkey and valname arguments are not.



Examples
~~~~~~~~


::

    if MSDOS then
      winqueryreg 'HKEY_LOCAL_MACHINE' 'HARDWARE\DESCRIPTION\System\CentralProcessor\0\' 'ProcessorNameString'
      lines(-1);
      mousechar = winqueryreg('name', 'HKEY_CURRENT_USER','control panel\mouse');
      len=size(mousechar);
      for k=1:len(1)
         setting = winqueryreg('HKEY_CURRENT_USER','control panel\mouse', mousechar(k));
         if (mousechar(k)=='') then mousechar(k)='default';,end
         str = sprintf('%s = %s', mousechar(k), string(setting));
         disp(str);
      end
    end




Authors
~~~~~~~

****A.C




