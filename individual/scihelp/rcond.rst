


rcond
=====

inverse condition number



Calling Sequence
~~~~~~~~~~~~~~~~


::

    rcond(X)




Arguments
~~~~~~~~~

:X real or complex square matrix
:



Description
~~~~~~~~~~~

`rcond(X)` is an estimate for the reciprocal of the condition of `X`
in the 1-norm.

If `X` is well conditioned, `rcond(X)` is close to 1. If not,
`rcond(X)` is close to 0.

We compute the 1-norm of A with Lapack/DLANGE, compute its LU
decomposition with Lapack/DGETRF and finally estimate the condition
with Lapack/DGECON.



Examples
~~~~~~~~


::

    A=`diag`_([1:10]);
    rcond(A)
    A(1,1)=0.000001;
    rcond(A)


Estimating the 1-norm inverse condition number with `rcond` is much
faster than computing the 2-norm condition number with `cond`. As a
trade-off, `rcond` may be less reliable.


::

    A=`ones`_(1000,1000);
    `timer`_();`cond`_(A);`timer`_()
    `timer`_();1/rcond(A);`timer`_()




See Also
~~~~~~~~


+ `svd`_ singular value decomposition
+ `cond`_ condition number
+ `inv`_ matrix inverse


.. _cond: cond.html
.. _inv: inv.html
.. _svd: svd.html


