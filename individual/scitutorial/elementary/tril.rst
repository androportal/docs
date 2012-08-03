====
"tril"
====

Scilab Function Last update : April 1993
**tril** - lower triangular part of matrix



Calling Sequence
~~~~~~~~~~~~~~~~

tril(x [,k])




Parameters
~~~~~~~~~~


+ **x** : matrix (real, complex, polynomial, rational)
+ **k** : integer (default value 0)




Description
~~~~~~~~~~~

Lower triangle part of a matrix. **tril(x,k)** is made by entries
below the kth diagonal : k>0 (upper diagonal) and k<0 (diagonals below
the main diagonal).



Examples
~~~~~~~~


::

    
    
    s=poly(0,'s');
    tril([s,s;s,1])
    tril([1/s,1/s;1/s,1])
     
      




See Also
~~~~~~~~

` **triu** `_,` **ones** `_,` **eye** `_,` **diag** `_,

.. _
      : ://./elementary/eye.htm
.. _
      : ://./elementary/triu.htm
.. _
      : ://./elementary/ones.htm
.. _
      : ://./elementary/diag.htm


