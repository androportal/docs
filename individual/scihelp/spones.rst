


spones
======

sparse matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    sp=spones(A)




Arguments
~~~~~~~~~

:A sparse matrix
: :sp sparse matrix
:



Description
~~~~~~~~~~~

`sp=spones(A)` generates a matrix with the same sparsity structure as
`A`, but with ones in the nonzero positions.



Examples
~~~~~~~~


::

    A=`sprand`_(10,12,0.1);
    sp=spones(A)
    B = A~=0
    `bool2s`_(B)




See Also
~~~~~~~~


+ `sparse`_ sparse matrix definition
+ `full`_ sparse to full matrix conversion
+ `eye`_ identity matrix
+ `speye`_ sparse identity matrix
+ `spzeros`_ sparse zero matrix


.. _speye: speye.html
.. _spzeros: spzeros.html
.. _eye: eye.html
.. _full: full.html
.. _sparse: sparse.html


