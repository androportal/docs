


ludel
=====

utility function used with lufact



Calling Sequence
~~~~~~~~~~~~~~~~


::

    ludel(hand)




Arguments
~~~~~~~~~

:hand handle to sparse lu factors (output of lufact)
:



Description
~~~~~~~~~~~

This function is used in conjunction with `lufact`. It clears the
internal memory space used to store the result of `lufact`.

The sequence of commands `[p,r]=lufact(A);x=lusolve(p,b);ludel(p);`
solves the sparse linear system `A*x = b` and clears `p`.



See Also
~~~~~~~~


+ `sparse`_ sparse matrix definition
+ `lufact`_ sparse lu factorization
+ `luget`_ extraction of sparse LU factors


.. _sparse: sparse.html
.. _luget: luget.html
.. _lufact: lufact.html


