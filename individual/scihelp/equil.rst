


equil
=====

balancing of pair of symmetric matrices



Calling Sequence
~~~~~~~~~~~~~~~~


::

    T=equil(P,Q)




Arguments
~~~~~~~~~

:P, Q two positive definite symmetric matrices
: :T nonsingular matrix
:



Description
~~~~~~~~~~~

`equil` returns `t` such that:

`T*P*T'` and `inv(T)'*Q*inv(T)` are both equal to a same diagonal and
positive matrix.



Examples
~~~~~~~~


::

    P=`rand`_(4,4);P=P*P';
    Q=`rand`_(4,4);Q=Q*Q';
    T=equil(P,Q)
    `clean`_(T*P*T')
    `clean`_(`inv`_(T)'*Q*`inv`_(T))




See Also
~~~~~~~~


+ `equil1`_ balancing (nonnegative) pair of matrices
+ `balanc`_ matrix or pencil balancing
+ `ctr_gram`_ controllability gramian


.. _ctr_gram: ctr_gram.html
.. _equil1: equil1.html
.. _balanc: balanc.html


