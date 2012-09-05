


lyap
====

Lyapunov equation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [X]=lyap(A,C,'c')
    [X]=lyap(A,C,'d')




Arguments
~~~~~~~~~

:A, C real square matrices, `C` must be symmetric
:



Description
~~~~~~~~~~~

`X= lyap(A,C,flag)` solves the continuous time or discrete time matrix
Lyapunov matrix equation:


::

    A'*X + X*A = C       ( flag='c' )
    A'*X*A - X = C       ( flag='d' )


Note that a unique solution exist if and only if an eigenvalue of `A`
is not an eigenvalue of `-A` ( `flag='c'`) or 1 over an eigenvalue of
`A` ( `flag='d'`).



Examples
~~~~~~~~


::

    A=`rand`_(4,4);C=`rand`_(A);C=C+C';
    X=lyap(A,C,'c');
    A'*X + X*A -C
    X=lyap(A,C,'d');
    A'*X*A - X -C




See Also
~~~~~~~~


+ `sylv`_ Sylvester equation.
+ `ctr_gram`_ controllability gramian
+ `obs_gram`_ observability gramian


.. _obs_gram: obs_gram.html
.. _sylv: sylv.html
.. _ctr_gram: ctr_gram.html


