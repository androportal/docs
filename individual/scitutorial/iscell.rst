


iscell
======

Check if a variable is a cell array



Calling Sequence
~~~~~~~~~~~~~~~~


::

    bool = iscell(x)




Arguments
~~~~~~~~~

:x Scilab variable
: :bool A boolean
:



Description
~~~~~~~~~~~

`iscell(x)` returns true if x is a cell array and false otherwise.



Examples
~~~~~~~~


::

    iscell(1)
    
    iscell(`cell`_())
    
    c = `cell`_(1,2);
    c(1).entries="Scilab";
    c(2).entries=`datenum`_();
    iscell(c)




See Also
~~~~~~~~


+ `cell`_ Create a cell array of empty matrices.
+ `isstruct`_ Check if a variable is a structure array


.. _cell: cell.html
.. _isstruct: isstruct.html


