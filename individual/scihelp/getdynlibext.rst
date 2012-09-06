


getdynlibext
============

get the extension of dynamic libraries on your operating system.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    ret=getdynlibext()




Description
~~~~~~~~~~~

get the extension of dynamic libraries on your operating system.

ret=getdynlibext() returns (.so on linux, .dylib on MacOS, .sl HP-
UX,.dll on Windows, ...).



Examples
~~~~~~~~


::

    getdynlibext()




