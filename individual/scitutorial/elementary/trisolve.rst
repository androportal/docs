====
"trisolve"
====

Scilab Function Last update : April 1993
**trisolve** - symbolic linear system solver



Calling Sequence
~~~~~~~~~~~~~~~~

[x [,sexp]] = trisolve(A,b [,sexp])




Parameters
~~~~~~~~~~


+ **A,b** : matrices of strings




Description
~~~~~~~~~~~

symbolically solves **A*x =b** , **A** being assumed to be upper
triangular.

**sexp** is a vector of common subexpressions in **A, b, x** .



Examples
~~~~~~~~


::

    
    
    A=['x','y';'0','z'];b=['0';'1'];
    w=trisolve(A,b)
    x=5;y=2;z=4;
    evstr(w)
    inv(evstr(A))*evstr(b)
     
      




See Also
~~~~~~~~

` **trianfml** `_,` **solve** `_,



Author
~~~~~~

F.D, S.S

.. _
      : ://./elementary/solve.htm
.. _
      : ://./elementary/trianfml.htm


