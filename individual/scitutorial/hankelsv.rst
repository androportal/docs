


hankelsv
========

Hankel singular values



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [nk2,W]=hankelsv(sl [,tol])
    [nk2]=hankelsv(sl [,tol])




Arguments
~~~~~~~~~

:sl `syslin` list representing the linear system (state-space).
: :tol tolerance parameter for detecting imaginary axis modes (default
  value is `1000*%eps`).
:



Description
~~~~~~~~~~~

returns `nk2`, the squared Hankel singular values of `sl` and `W =
P*Q` = controllability gramian times observability gramian.

`nk2` is the vector of eigenvalues of `W`.



Examples
~~~~~~~~


::

    A=`diag`_([-1,-2,-3]);
    sl=`syslin`_('c',A,`rand`_(3,2),`rand`_(2,3));[nk2,W]=hankelsv(sl)
    [Q,M]=`pbig`_(W,nk2(2)-%eps,'c');
    slr=`projsl`_(sl,Q,M);hankelsv(slr)




See Also
~~~~~~~~


+ `balreal`_ balanced realization
+ `equil`_ balancing of pair of symmetric matrices
+ `equil1`_ balancing (nonnegative) pair of matrices


.. _equil1: equil1.html
.. _balreal: balreal.html
.. _equil: equil.html


