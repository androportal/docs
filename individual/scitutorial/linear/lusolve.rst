====
"lusolve"
====

Scilab Function Last update : 20/12/2004
**lusolve** - sparse linear system solver



Calling Sequence
~~~~~~~~~~~~~~~~

lusolve(hand,b)
lusolve(A,b)




Parameters
~~~~~~~~~~


+ **b** : full real matrix
+ **A** : real square sparse invertible matrix
+ **hand** : handle to a previously computed sparse lu factors (output
  of lufact)




Description
~~~~~~~~~~~

**x=lusolve(hand,b)** solves the sparse linear system **A*x = b** .

**[hand,rk]=lufact(A)** is the output of lufact.

**x=lusolve(A,b)** solves the sparse linear system **A*x = b**



Examples
~~~~~~~~


::

    
    
    non_zeros=[1,2,3,4];rows_cols=[1,1;2,2;3,3;4,4];
    sp=sparse(rows_cols,non_zeros);
    [h,rk]=lufact(sp);x=lusolve(h,[1;1;1;1]);ludel(h)
    rk,sp*x
    
    non_zeros=[1,2,3,4];rows_cols=[1,1;2,2;3,3;4,4];
    sp=sparse(rows_cols,non_zeros);
    x=lusolve(sp,-ones(4,1));
    sp*x
     
      




See Also
~~~~~~~~

` **sparse** `_,` **lufact** `_,` **slash** `_,` **backslash** `_,

.. _
      : ://./linear/../programming/backslash.htm
.. _
      : ://./linear/../elementary/sparse.htm
.. _
      : ://./linear/../programming/slash.htm
.. _
      : ://./linear/lufact.htm


