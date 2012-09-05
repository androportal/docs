


taucs_chdel
===========

utility function used with taucs_chfact



Calling Sequence
~~~~~~~~~~~~~~~~


::

    taucs_chdel(C_ptr) or taucs_chdel()




Arguments
~~~~~~~~~

:C_ptr a pointer to a Cholesky factorization
:



Description
~~~~~~~~~~~

This function is used in conjunction with `taucs_chfact`_ and
`taucs_chsolve`_. It clears the internal memory space used to store
the Cholesky factorization (got with taucs_chfact). Use without
argument it frees the memory for all the current scilab (taucs)
Cholesky factorizations.



Examples
~~~~~~~~

see the example section of `taucs_chfact`_



See Also
~~~~~~~~


+ `taucs_chfact`_ cholesky factorisation of a sparse s.p.d. matrix
+ `taucs_chsolve`_ solve a linear sparse (s.p.d.) system given the
  Cholesky factors
+ `taucs_chinfo`_ get information on Cholesky factors
+ `taucs_chget`_ retrieve the Cholesky factorization at the scilab
  level


.. _taucs_chfact: taucs_chfact.html
.. _taucs_chget: taucs_chget.html
.. _taucs_chinfo: taucs_chinfo.html
.. _taucs_chsolve: taucs_chsolve.html


