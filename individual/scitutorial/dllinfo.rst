


dllinfo
=======

provides information about the format and symbols provided in
executable and DLL files (Windows).



Calling Sequence
~~~~~~~~~~~~~~~~


::

    infolist = dllinfo(filename,option)




Arguments
~~~~~~~~~

:filename a string : a filename .dll or .exe file
: :option a string : 'machine' , 'exports' , 'imports'
: :infolist a list : infolist(1) : a string : name of dll or
  executable. infolist(2) : a string matrix : symbols (imported or
  exported) or machine type (x86 or x64).
:



Description
~~~~~~~~~~~

This tool provides information about the format and symbols (imported
or exported) provided in executable and DLL files.

This tool is based on dumpbin.exe. A tool provided with Visual studio
SDK.



Examples
~~~~~~~~


::

    if `getos`_() == 'Windows' then
      filename = SCI+'\bin\libscilab.dll';
    
      dllinfolist = dllinfo(filename,'machine');
      `mprintf`_('Machine destination of %s: %s\n',dllinfolist(1),dllinfolist(2));
    
      dllinfolist = dllinfo(filename,'imports');
      `mprintf`_('Dlls dependencies of %s:\n',filename);
      for i=1:`size`_(dllinfolist)
        `mprintf`_('%s\n',dllinfolist(i)(1));
      end
    
      dllinfolist = dllinfo(filename,'exports');
      `mprintf`_('Dll exports of %s:\n',filename);
      `disp`_(dllinfolist);
    end




See Also
~~~~~~~~


+ `addinter`_ new functions interface dynamic link at run time.
+ `link`_ dynamic linker
+ `ilib_compile`_ ilib_build utility: executes the Makefile produced
  by ilib_gen_Make
+ `ilib_gen_Make`_ utility for ilib_build: produces a Makefile for
  building shared libraries
+ `ilib_gen_gateway`_ utility for ilib_build, generates a gateway
  file.
+ `ilib_gen_loader`_ utility for ilib_build: generates a loader file
+ `ilib_for_link`_ utility for shared library management with link


.. _ilib_for_link: ilib_for_link.html
.. _ilib_compile: ilib_compile.html
.. _addinter: addinter.html
.. _link: link.html
.. _ilib_gen_loader: ilib_gen_loader.html
.. _ilib_gen_Make: ilib_gen_Make.html
.. _ilib_gen_gateway: ilib_gen_gateway.html


