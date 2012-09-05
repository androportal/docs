


eye
===

identity matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    X=eye(m,n)
    X=eye(A)
    X=eye()




Arguments
~~~~~~~~~

:A,X matrices or `syslin` lists
: :m,n integers
:



Description
~~~~~~~~~~~

according to its arguments defines an `m`x `n` matrix with 1 along the
main diagonal or an identity matrix of the same dimension as `A` .

Caution: `eye(10)` is interpreted as `eye(A)` with `A=10` i.e. `1`.
(It is NOT a ten by ten identity matrix!).

If `A` is a linear system represented by a `syslin` list, `eye(A)`
returns an `eye` matrix of appropriate dimension: (number of outputs x
number of inputs).

`eye()` produces a identity matrix with undefined dimensions.
Dimensions will be defined when this identity matrix is added to a
matrix with fixed dimensions.



Examples
~~~~~~~~


::

    eye(2,3)
    A=`rand`_(2,3);eye(A)
    s=`poly`_(0,'s');A=[s,1;s,s+1];eye(A)
    A=[1/s,1;s,2];eye(A);
    A=`ssrand`_(2,2,3);eye(A)
    [1 2;3 4]+2*eye()




See Also
~~~~~~~~


+ `ones`_ matrix made of ones
+ `zeros`_ matrix made of zeros


.. _ones: ones.html
.. _zeros: zeros.html


