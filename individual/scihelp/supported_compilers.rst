


Supported and compatible compilers
==================================

supported and compatible compilers by Scilab



Scilab supported and compatible compilers
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Some features of Scilab require that you have a third-party compiler
installed on your system.



Windows
~~~~~~~

-- Visual studio C++ 2005, 2008, 2010 Professionnal 32 and 64 bits

-- Visual studio C++ 2008, 2010 Express Edition (available at no
charge)

On 64-bit Windows, Visual Studio C++ 2008/2010 Express Edition
requires you to install some optional component. See `"How can I set
up Microsoft Visual Studio 2008/2010 C++ Express Edition for use with
Scilab x64 on 64-bit Windows ?"`_ on scilab wiki.

-- Intel Fortran 9, 10, 11, XE 2011

-- LCC-Win32 requires to install a ATOMS module:

::

    `atomsInstall`_('lcc_windows'); `atomsLoad`_('lcc_windows');



-- MinGW requires to install a ATOMS module:

::

    `atomsInstall`_('mingw'); `atomsLoad`_('mingw');





GNU/Linux
~~~~~~~~~

On GNU/Linux, GNU compilers (gcc, g++ and gfortran) are packaged in
all distributions.

While they are not official supported, Scilab supports `LLVM/clang`_
and Intel compilers.



Mac OS X
~~~~~~~~

Apple's development environment for OS X, `Xcode`_, is available from
Apple at no charge.



See Also
~~~~~~~~


+ `haveacompiler`_ detect if you have a C compiler.
+ `atomsInstall`_ Install one or several external modules


.. _atomsInstall: atomsInstall.html
.. _LLVM/clang: http://clang.llvm.org/
.. _": http://wiki.scilab.org/How_can_I_set_up_Microsoft_Visual_Studio_2008/2010_Express_Edition_for_use_with_Scilab_x64_on_64-bit_Windows%3F
.. _Xcode: http://developer.apple.com/technologies/tools/xcode.html
.. _haveacompiler: haveacompiler.html


