


listvarinfile
=============

list of variables in a saved data file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    listvarinfile(filename)
    [names,typs,dims,vols]=listvarinfile(filename)




Arguments
~~~~~~~~~

:filename a character string, the pathname of the file to be
  inspected.
: :nams a matrix of strings, names of the variables saved in the file.
: :dims a list, dimensions of the variables saved in the file.
: :typs a numeric matrix, types of the variables saved in the file.
: :vols a numeric matrix, size in bytes of the variables saved in the
  file.
:



Description
~~~~~~~~~~~


+ This utility function lists "a la `whos`_" the variables contained
  in a Scilab data file produced by `save`_. Hypermatrices are reported
  as plain mlists; rationals and state-spaces are reported as plain
  tlists; graphic handles are not recognized.




Examples
~~~~~~~~


::

    a=`eye`_(2,2); b=`int16`_(`ones`_(a)); c=`rand`_(2,3,3);
    `save`_(`fullfile`_(TMPDIR,"vals.sod"),'a','b','c')
    [names,typs,dims,vols] = listvarinfile(`fullfile`_(TMPDIR,"vals.sod"))




See Also
~~~~~~~~


+ `whos`_ listing of variables in long form
+ `save`_ Save a variable or a serie of variables in a binary file
+ `load`_ Load a saved variable or a serie of variables
+ `save_format`_ format of files produced by "save"
+ `type`_ Returns the type of a variable


.. _type: type.html
.. _save_format: save_format.html
.. _load: load.html
.. _save: save.html
.. _whos: whos.html


