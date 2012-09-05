


isequal
=======

objects comparison



Calling Sequence
~~~~~~~~~~~~~~~~


::

    t=isequal(a,b)
    t=isequal(a,b,..)




Arguments
~~~~~~~~~

:a, b , ... variables of any types
: :t boolean
:



Description
~~~~~~~~~~~

`isequal` compares its arguments. If all of them are equal then the
function returns `%t` and in the other case it returns `%f`.

When comparing lists, structures,... the comparison is made
recursively, the order of the fields matters.

Floating point data are compared according to IEEE rule, i.e. NaN
values are not equal. See `isequalbitwise`_ for bitwise comparisons.



Examples
~~~~~~~~


::

    a=[1 2]
    isequal(a,[1 2])
    isequal(a,1)




See Also
~~~~~~~~


+ `isequalbitwise`_ bitwise comparison of variables
+ `equal`_ (=) assignment , comparison, equal sign
+ `less`_ (<) less than comparison


.. _less: less.html
.. _isequalbitwise: isequalbitwise.html
.. _equal: equal.html


