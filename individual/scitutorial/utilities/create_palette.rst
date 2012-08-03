====
"create_palette"
====

Scilab Function Last update : 04/02/2005
**create_palette** - Build Scicos palettes



Calling Sequence
~~~~~~~~~~~~~~~~

routines = create_palette(Path)
routines = create_palette()




Parameters
~~~~~~~~~~


+ **Path** : string, the path of the directory containing the
  interfacing functions
+ **routines** : The list of required simulation functions




Description
~~~~~~~~~~~

**** Without argument **create_palette()** build all the initial
  scicos palettes and store then in **SCIDIR/macros/scicos/** .
**** **create_palette(Path)** build the palette associated with all
  *.sci files contained in the directory given by **Path** . The palette
  file is store in this directory. N.B. : all *.sci file contained in
  the directory are assumed to be Scicos interfacing functions




See Also
~~~~~~~~

` ** add_palette** `_,

.. _
      : ://./utilities/add_palette.htm


