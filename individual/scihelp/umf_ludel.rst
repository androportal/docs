


umf_ludel
=========

utility function used with umf_lufact



Calling Sequence
~~~~~~~~~~~~~~~~


::

    umf_ludel(LU_ptr) or umf_ludel()




Arguments
~~~~~~~~~

:LU_ptr a pointer to a handle of umf lu factors (L,U,p,q,R)
:



Description
~~~~~~~~~~~

This function must be used in conjunction with `umf_lufact`_ and
`umf_lusolve`_. It clears the internal memory space used to store the
LU factors (got with umf_lufact). Use without argument it frees the
memory for all the current scilab umfpack LU factors.



Examples
~~~~~~~~

see the example section of `umf_lufact`_



See Also
~~~~~~~~


+ `umfpack`_ solve sparse linear system
+ `umf_lufact`_ lu factorisation of a sparse matrix
+ `umf_lusolve`_ solve a linear sparse system given the LU factors
+ `umf_luget`_ retrieve lu factors at the scilab level
+ `umf_luinfo`_ get information on LU factors


.. _umf_luget: umf_luget.html
.. _umf_luinfo: umf_luinfo.html
.. _umfpack: umfpack.html
.. _umf_lusolve: umf_lusolve.html
.. _umf_lufact: umf_lufact.html


