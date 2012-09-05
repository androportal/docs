


xcosPalAdd
==========

Add a palette to the Scilab/Xcos palette manager. Optional property
can be added to set the category of the palette.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xcosPalAdd(pal);
    xcosPalAdd(pal, category);
    status = xcosPalAdd(pal);
    status = xcosPalAdd(pal, category);
    [status, msg] = xcosPalAdd(pal);
    [status, msg] = xcosPalAdd(pal, category);




Arguments
~~~~~~~~~

:pal: palette tlist or path string; the palette to add
: :category: string array; the optional category path to use
: :status: boolean; the status of the operation
: :msg: string; the error message
:



Description
~~~~~~~~~~~

After setting the blocks into the palette, the user add this function
to add a Scilab palette to the Xcos palette manager.

The optional category argument can be used to add the palette to a
customized category path. If not specified, the root category is used.





Examples
~~~~~~~~


::

    `loadXcosLibs`_();
    pal = `xcosPal`_();
    pal = `xcosPalAddBlock`_(pal, "SUM_f");
    pal = `xcosPalAddBlock`_(pal, "BIGSOM_f");
    
    xcosPalAdd(pal, "my Summation blocks")




See also
~~~~~~~~


+ `xcosPal`_ Instanciate a new Xcos palette on Scilab.
+ `xcosPalAddBlock`_ Add a block to a Scilab/Xcos palette instance.
  Some optional properties can be added to customize the palette icon
  and the style of the block.


.. _xcosPal: xcosPal.html
.. _xcosPalAddBlock: xcosPalAddBlock.html


