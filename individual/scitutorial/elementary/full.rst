====
"full"
====

Scilab Function Last update : January 1995
**full** - sparse to full matrix conversion



Calling Sequence
~~~~~~~~~~~~~~~~

X=full(sp)




Parameters
~~~~~~~~~~


+ **sp** : real or complex sparse (or full) matrix
+ **X** : full matrix




Description
~~~~~~~~~~~

**X=full(sp)** converts the sparse matrix **sp** into its full
representation. (If **sp** is already full then **X** equals **sp** ).



Examples
~~~~~~~~


::

    
    
    sp=sparse([1,2;5,4;3,1],[1,2,3]);
    A=full(sp)
     
      




See Also
~~~~~~~~

` **sparse** `_,` **sprand** `_,` **speye** `_,

.. _
      : ://./elementary/speye.htm
.. _
      : ://./elementary/sparse.htm
.. _
      : ://./elementary/sprand.htm


