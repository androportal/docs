


zeros
=====

matrix made of zeros



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=zeros()
    y=zeros(x)
    y=zeros(m1,m2,..)




Arguments
~~~~~~~~~

:x,y matrices
: :m1, m2,.. integers
:



Description
~~~~~~~~~~~

Creates matrix of zeros (same as `0*ones`).

:zeros(m1,m2) for an `(m1,m2)` matrix.
: :zeros(m1,m2,..,mn) creates a `(m1,m2,..,mn)` matrix filled with
  zeros
: :zeros(A) for a matrix of same size of `A`.
: :zeros(3) is `zeros(a)` with `a=3` i.e it is NOT a 3x3 matrix!
: :zeros() returns a single zero
:

If `x` is a `syslin` list (linear system in state-space or transfer
form), `zeros(x)` is also valid and returns a zero matrix.



Examples
~~~~~~~~


::

    zeros(3)
    zeros(3,3)
    zeros(2,3,2)




See Also
~~~~~~~~


+ `eye`_ identity matrix
+ `ones`_ matrix made of ones
+ `spzeros`_ sparse zero matrix


.. _ones: ones.html
.. _eye: eye.html
.. _spzeros: spzeros.html


