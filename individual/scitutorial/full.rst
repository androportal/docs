


full
====

sparse to full matrix conversion



Calling Sequence
~~~~~~~~~~~~~~~~


::

    X=full(sp)




Arguments
~~~~~~~~~

:sp real or complex sparse (or full) matrix
: :X full matrix
:



Description
~~~~~~~~~~~

`X=full(sp)` converts the sparse matrix `sp` into its full
representation. (If `sp` is already full then `X` equals `sp`).



Examples
~~~~~~~~


::

    sp=`sparse`_([1,2;5,4;3,1],[1,2,3]);
    A=full(sp)




See Also
~~~~~~~~


+ `sparse`_ sparse matrix definition
+ `sprand`_ sparse random matrix
+ `speye`_ sparse identity matrix


.. _sparse: sparse.html
.. _speye: speye.html
.. _sprand: sprand.html


