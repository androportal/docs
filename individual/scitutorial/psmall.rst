


psmall
======

spectral projection



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Q,M]=psmall(A,thres,flag)




Arguments
~~~~~~~~~

:A real square matrix
: :thres real number
: :flag character string ( `'c'` or `'d'`)
: :Q,M real matrices
:



Description
~~~~~~~~~~~

Projection on eigen-subspace associated with eigenvalues with real
part < `thres` ( `flag='c'`) or with modulus < `thres` ( `flag='d'`).

The projection is defined by `Q*M`, `Q` is full column rank, `M` is
full row rank and `M*Q=eye`.

If `flag='c'`, the eigenvalues of `M*A*Q` = eigenvalues of `A` with
real part < `thres`.

If `flag='d'`, the eigenvalues of `M*A*Q` = eigenvalues of `A` with
magnitude < `thres`.

If `flag='c'` and if `[Q1,M1]` = full rank factorization ( `fullrf`)
of `eye()-Q*M` then eigenvalues of `M1*A*Q1` = eigenvalues of `A` with
real part >= `thres`.

If `flag='d'` and if `[Q1,M1]` = full rank factorization ( `fullrf`)
of `eye()-Q*M` then eigenvalues of `M1*A*Q1` = eigenvalues of `A` with
magnitude >= `thres`.



Examples
~~~~~~~~


::

    A=`diag`_([1,2,3]);X=`rand`_(A);A=`inv`_(X)*A*X;
    [Q,M]=psmall(A,2.5,'d');
    `spec`_(M*A*Q)
    [Q1,M1]=`fullrf`_(`eye`_()-Q*M);
    `spec`_(M1*A*Q1)




See Also
~~~~~~~~


+ `pbig`_ eigen-projection
+ `proj`_ projection
+ `projspec`_ spectral operators




Used Functions
~~~~~~~~~~~~~~

This function is based on the ordered schur form (scilab function
`schur`).

.. _pbig: pbig.html
.. _proj: proj.html
.. _projspec: projspec.html


