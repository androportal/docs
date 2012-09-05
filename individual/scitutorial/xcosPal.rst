


xcosPal
=======

Instanciate a new Xcos palette on Scilab.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    pal = xcosPal();
    pal = xcosPal(name);
    pal = xcosPal(scs_m);
    pal = xcosPal([], scs_m);
    pal = xcosPal(name, scs_m);




Arguments
~~~~~~~~~

:name: string; the optional palette name
: :scs_m: diagram mlist; the optional source diagram
: :pal: palette tlist; the palette instance
:



Description
~~~~~~~~~~~

Instanciate a new palette diagram.

The optional name argument can be used to set a name to the palette.
The optional scs_m argument can be used to import diagrams as
palettes.





Examples
~~~~~~~~


::

    `loadXcosLibs`_();
    
    // from scratch
    pal = xcosPal("My sum palette");
    pal = `xcosPalAddBlock`_(pal, "SUM_f");
    pal = `xcosPalAddBlock`_(pal, "BIGSOM_f");
    `xcosPalAdd`_(pal);
    
    // from an old palette
    `exec`_(SCI + "/modules/scicos/palettes/Integer.cosf", -1);
    pal = xcosPal(scs_m);
    `xcosPalAdd`_(pal);




See also
~~~~~~~~


+ `xcosPal`_ Instanciate a new Xcos palette on Scilab.
+ `xcosPalAddBlock`_ Add a block to a Scilab/Xcos palette instance.
  Some optional properties can be added to customize the palette icon
  and the style of the block.


.. _xcosPal: xcosPal.html
.. _xcosPalAddBlock: xcosPalAddBlock.html


