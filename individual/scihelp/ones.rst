


ones
====

matrix made of ones



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=ones(m1,m2,...)
    y=ones(x)
    y=ones()




Arguments
~~~~~~~~~

:x,y matrices
: :m1, m2,.. integers
:



Description
~~~~~~~~~~~

Returns a matrix made of ones.

:ones(m1,m2) returns a `(m1,m2)` matrix full of ones.
: :ones(m1,m2,..,mn) creates a `(m1,m2,..,mn)` matrix full of ones.
: :ones(x) returns a matrix full of ones with the same size that `x`.
: :ones(x) is also valid for `x` a `syslin` list.
:

Note that `ones(3)` is `ones(a)` with `a=3` i.e it is NOT a 3x3
matrix!

ones() is eqivalent to ones(1,1).



Examples
~~~~~~~~


::

    ones(3)
    ones(3,3)
    ones(2,3,2)




See Also
~~~~~~~~


+ `eye`_ identity matrix
+ `zeros`_ matrix made of zeros


.. _zeros: zeros.html
.. _eye: eye.html


