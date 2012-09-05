


isstruct
========

Check if a variable is a structure array



Calling Sequence
~~~~~~~~~~~~~~~~


::

    bool = isstruct(x)




Arguments
~~~~~~~~~

:x Scilab variable
: :bool A boolean
:



Description
~~~~~~~~~~~

`isstruct(x)` returns true if x is a struct array and false otherwise.



Examples
~~~~~~~~


::

    isstruct(1)
    
    isstruct(`cell`_())
    
    isstruct(`struct`_("name","Scilab", "version", `getversion`_()))
    
    info.name="Scilab";
    info.function="isstruct";
    info.module="help";
    isstruct(info)




See Also
~~~~~~~~


+ `struct`_ create a struct
+ `iscell`_ Check if a variable is a cell array


.. _struct: struct.html
.. _iscell: iscell.html


