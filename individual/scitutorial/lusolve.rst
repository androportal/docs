


lusolve
=======

sparse linear system solver



Calling Sequence
~~~~~~~~~~~~~~~~


::

    lusolve(hand,b)
    lusolve(A,b)




Arguments
~~~~~~~~~

:b full real matrix
: :A real square sparse invertible matrix
: :hand handle to a previously computed sparse lu factors (output of
  lufact)
:



Description
~~~~~~~~~~~

`x=lusolve(hand,b)` solves the sparse linear system `A*x = b`.

`[hand,rk]=lufact(A)` is the output of lufact.

`x=lusolve(A,b)` solves the sparse linear system `A*x = b`



Examples
~~~~~~~~


::

    non_zeros=[1,2,3,4];rows_cols=[1,1;2,2;3,3;4,4];
    sp=`sparse`_(rows_cols,non_zeros);
    [h,rk]=`lufact`_(sp);x=lusolve(h,[1;1;1;1]);`ludel`_(h)
    rk,sp*x
    
    non_zeros=[1,2,3,4];rows_cols=[1,1;2,2;3,3;4,4];
    sp=`sparse`_(rows_cols,non_zeros);
    x=lusolve(sp,-`ones`_(4,1));
    sp*x




See Also
~~~~~~~~


+ `sparse`_ sparse matrix definition
+ `lufact`_ sparse lu factorization
+ `slash`_ (/) right division and feed back
+ `backslash`_ (\) left matrix division.


.. _sparse: sparse.html
.. _backslash: backslash.html
.. _slash: slash.html
.. _lufact: lufact.html


