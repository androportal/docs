


isempty
=======

check if a variable is an empty matrix or an empty list



Calling Sequence
~~~~~~~~~~~~~~~~


::

    t=isempty(x)




Arguments
~~~~~~~~~

:x vector, matrix or list
: :t a boolean
:



Description
~~~~~~~~~~~

`isempty(x)` returns true if `x` is an empty matrix or an empty list.



Examples
~~~~~~~~


::

    a=1
    isempty(a(2:$))
    isempty(`find`_(`rand`_(1:10)==5))




