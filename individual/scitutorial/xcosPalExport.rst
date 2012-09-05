


xcosPalExport
=============

Export a palette instance to a path.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xcosPalExport(pal, path);
    status = xcosPalExport(pal, path);
    [status, message] = xcosPalExport(pal, path);




Arguments
~~~~~~~~~

:pal: palette tlist; the palette to export
: :path: string path; where to export the palette (HDF5 formatted
  file)
: :status: boolean; status of the export
: :msg: string; error message
:



Description
~~~~~~~~~~~

Export Scilab palette instance to a file.





Examples
~~~~~~~~


::

    `loadXcosLibs`_();
    pal = `xcosPal`_();
    
    o1 = SUM_f("define");
    o2 = BIGSOM_f("define");
    
    pal = `xcosPalAddBlock`_(pal, o1);
    pal = `xcosPalAddBlock`_(pal, o2);
    
    xcosPalExport(pal, TMPDIR + "/palette.sod");




See also
~~~~~~~~


+ `xcosPal`_ Instanciate a new Xcos palette on Scilab.
+ `xcosPalAdd`_ Add a palette to the Scilab/Xcos palette manager.
  Optional property can be added to set the category of the palette.


.. _xcosPal: xcosPal.html
.. _xcosPalAdd: xcosPalAdd.html


