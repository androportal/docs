====
"spones"
====

Scilab Function Last update : January 1995
**spones** - sparse matrix



Calling Sequence
~~~~~~~~~~~~~~~~

sp=spones(A)




Parameters
~~~~~~~~~~


+ **A** : sparse matrix
+ **sp** : sparse matrix




Description
~~~~~~~~~~~

**sp=spones(A)** generates a matrix with the same sparsity structure
as **A** , but with ones in the nonzero positions;



Examples
~~~~~~~~


::

    
    
    A=sprand(10,12,0.1);
    sp=spones(A)
    B = A~=0
    bool2s(B)
     
      




See Also
~~~~~~~~

` **sparse** `_,` **full** `_,` **eye** `_,` **speye** `_,`
**spzeros** `_,

.. _
      : ://./elementary/eye.htm
.. _
      : ://./elementary/full.htm
.. _
      : ://./elementary/sparse.htm
.. _
      : ://./elementary/speye.htm
.. _
      : ://./elementary/spzeros.htm


