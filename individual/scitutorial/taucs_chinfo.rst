


taucs_chinfo
============

get information on Cholesky factors



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [OK, n, cnz] = taucs_chinfo(C_ptr)




Arguments
~~~~~~~~~

:C_ptr a pointer to a Cholesky factorization
: :OK a scalar boolean
: :n a scalar integer
: :cnz a scalar integer
:



Description
~~~~~~~~~~~

This function may be used to know basic information about the Cholesky
factor created with taucs_chfact :


+ first `OK` is `%t` if `C_ptr` is a valid pointer to an Cholesky
  factorization (and `%f` else)
+ if `OK` is `%t` then `n` and `cnz` are respectively the matrix order
  and the number of non zeros elements in the supernodal structure
  storing `C` ; if `OK` is `%f`, `n` and `cnz` are set to the void
  matrix [].




Details
~~~~~~~

Due to the supernodal structure used for `C`, `cnz` is larger than the
exact number of non-zeros elements in `C` (and so this `cnz` is a
mesure of the memory used internally). To get the exact `cnz` you may
retrieve the Cholesky factor with `taucs_chget`_ then apply the `nnz`_
scilab function (see the 2d example in `taucs_chget`_).



See Also
~~~~~~~~


+ `taucs_chfact`_ cholesky factorisation of a sparse s.p.d. matrix
+ `taucs_chsolve`_ solve a linear sparse (s.p.d.) system given the
  Cholesky factors
+ `taucs_chdel`_ utility function used with taucs_chfact
+ `taucs_chget`_ retrieve the Cholesky factorization at the scilab
  level


.. _taucs_chdel: taucs_chdel.html
.. _taucs_chget: taucs_chget.html
.. _taucs_chfact: taucs_chfact.html
.. _nnz: nnz.html
.. _taucs_chsolve: taucs_chsolve.html


