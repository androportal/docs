


isfield
=======

Checks if the given fieldname exists in the structure



Calling Sequence
~~~~~~~~~~~~~~~~


::

    bool = isfield(s,fieldname)




Arguments
~~~~~~~~~

:s A struct array
: :fieldname A matrix of strings
: :bool A matrix of boolean.
:



Description
~~~~~~~~~~~

This function returns true if the specified structure "s" includes the
field "field", regardless of the corresponding value.



Examples
~~~~~~~~


::

    s = `struct`_("field_1",123,"field_2",456,"field_4",789)
    
    // Single Fieldname Syntax
    isfield( s , "field_1"  )
    
    // Multiple Fieldname Syntax
    isfield( s , [ "field_1" "field_2" ; "field_3" "field_4" ] )




See Also
~~~~~~~~


+ `struct`_ create a struct
+ `getfield`_ list field extraction
+ `definedfields`_ return index of list's defined fields


.. _getfield: getfield.html
.. _struct: struct.html
.. _definedfields: definedfields.html


