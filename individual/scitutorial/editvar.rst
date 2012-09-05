


editvar
=======

Scilab variable editor



Calling Sequence
~~~~~~~~~~~~~~~~


::

    editvar varname




Arguments
~~~~~~~~~

:varname variable name. The variable must exist in the current Scilab
  environnement.
:



Description
~~~~~~~~~~~

`editvar` is the Scilab variable editor.

`editvar` can be started by calling it on the name of the variable or
by double-clicking on the name of the variable from the `browsevar
component`_.

`editvar` has numerous features:

+ Matrix visualisation
+ Undo/redo capabilities
+ Cell editing
+ Expression evaluation. Please note that editvar will not store the
  expression. Only the value.
+ Advanced selection of elements (available with the CTRL key)
+ Plotting
+ Plotting of a subset
+ Variable format (short, shortE, long or longE formats)
+ Column / lines management (insert, delete, copy and paste, ... )
+ Full copy and paste between `Libreoffice`_/Openoffice or Microsoft
  Excel and Scilab (both ways)
+ Renaming or copy of a variable



`editvar` can edit the following variable types:

+ Real or complex constant matrix (type 1)
+ `Boolean matrix`_ (type 4)
+ `Sparse matrix`_ (type 5)
+ `Boolean sparse matrix`_ (type 6)
+ `Integer matrix`_: 8, 16 & 32 bytes (type 8)
+ `Matrix of strings`_ (type 10)





Examples
~~~~~~~~


::

    a=`rand`_(10,10);
    editvar a;
    b=['hello';'good bye'];
    editvar b;
    sp=`sparse`_([1,2;4,5;3,10],[1,2,3])
    editvar("sp");


.. _Integer matrix: int8.html
.. _Matrix of strings: strings.html
.. _browsevar component: browsevar.html
.. _Boolean matrix: matrices.html
.. _Boolean sparse matrix: sparse.html
.. _Libreoffice: http://www.libreoffice.org/


