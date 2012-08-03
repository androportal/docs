====
"trianfml"
====

Scilab Function Last update : April 1993
**trianfml** - symbolic triangularization



Calling Sequence
~~~~~~~~~~~~~~~~

[f [,sexp]]=trianfml(f [,sexp])




Description
~~~~~~~~~~~

Symbolic triangularization of the matrix **f** ; triangularization is
performed by elementary row operations; **sexp** is a set of common
expressions stored by the algorithm.



Examples
~~~~~~~~


::

    
    
    A=['1','2';'a','b']
    W=trianfml([A,string(eye(2,2))])
    U=W(:,3:4)
    a=5;b=6;
    A=evstr(A)
    U=evstr(U)
    U*A
    evstr(W(:,1:2))
     
      




See Also
~~~~~~~~

` **addf** `_,` **mulf** `_,` **solve** `_,` **trisolve** `_,

.. _
      : ://./elementary/addf.htm
.. _
      : ://./elementary/solve.htm
.. _
      : ://./elementary/trisolve.htm
.. _
      : ://./elementary/mulf.htm


