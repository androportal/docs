


isequalbitwise
==============

bitwise comparison of variables



Calling Sequence
~~~~~~~~~~~~~~~~


::

    t=isequalbitwise(a,b)
    t=isequalbitwise(a,b,..)




Arguments
~~~~~~~~~

:a, b , ... variables of any types
: :t boolean
:



Description
~~~~~~~~~~~

`isequalbitwise` compares its arguments. If all of them are equal,
then the function returns `%t` and in the other case it returns `%f`.

When comparing list's, structures,... the comparison is made
recursively, the order of the fields matters.

Floating point data are compared bitwise, i.e. NaN values are not
equal, double(1) and int32(1) are not equal. See `isequal`_ for IEEE
comparisons.



Examples
~~~~~~~~


::

    a=`list`_(1:5,%s+1,'ABCDEFG');
    isequalbitwise(a,a)




See Also
~~~~~~~~


+ `isequal`_ objects comparison


.. _isequal: isequal.html


