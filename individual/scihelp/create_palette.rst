


create_palette
==============

Palette generator



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [routines,IntFunc] = create_palette(Path)




Module
~~~~~~


+ `xcos`_




Description
~~~~~~~~~~~

This function generates a palette if Path is a string indicating the
directoy in which the interfacing functions of the blocks are to be
found. If Path is not present or if it is %t, then standard scicos
palettes are regenerated. If %f, then only IntFunc (list of
interfacing functions) is returned. List of routines is empty in this
case.




::

    [routines,IntFunc] = create_palette(Path)




Arguments
~~~~~~~~~


+ **Path :** a string given the directory path that contains Scicos
  blocks interfacing functions.
+ **routines :** a vector of strings that contains names of
  computational functions used in scicos blocks.
+ **IntFunc :** a vector of strings that contains names of interfacing
  functions used in scicos blocks.




File content
~~~~~~~~~~~~


+ SCI/modules/scicos/macros/scicos_utils/create_palette.sci


.. _xcos: xcos.html


