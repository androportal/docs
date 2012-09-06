


iscellstr
=========

Check if a variable is a cell array of strings



Calling Sequence
~~~~~~~~~~~~~~~~


::

    bool = iscellstr(x)




Arguments
~~~~~~~~~

:x Scilab variable
: :bool A boolean
:



Description
~~~~~~~~~~~

`iscellstr(x)` returns true if x is a cell array of strings (or an
empty cell array) and false otherwise.



Examples
~~~~~~~~


::

    iscellstr(1)
    
    iscellstr(`cell`_())
    
    iscellstr(`cell`_(3))
    
    strcell = `cell`_(3,1);
    strcell(1).entries="Scilab";
    strcell(2).entries="iscellstr";
    strcell(3).entries="help";
    iscellstr(strcell)




See Also
~~~~~~~~


+ `cell`_ Create a cell array of empty matrices.
+ `iscell`_ Check if a variable is a cell array
+ `isstruct`_ Check if a variable is a structure array


.. _cell: cell.html
.. _isstruct: isstruct.html
.. _iscell: iscell.html


