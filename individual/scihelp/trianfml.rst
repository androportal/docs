


trianfml
========

symbolic triangularization



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [f [,sexp]]=trianfml(f [,sexp])




Description
~~~~~~~~~~~

Symbolic triangularization of the matrix `f` ; triangularization is
performed by elementary row operations; `sexp` is a set of common
expressions stored by the algorithm.



Examples
~~~~~~~~


::

    A=['1','2';'a','b']
    W=trianfml([A,`string`_(`eye`_(2,2))])
    U=W(:,3:4)
    a=5;b=6;
    A=`evstr`_(A)
    U=`evstr`_(U)
    U*A
    `evstr`_(W(:,1:2))




See Also
~~~~~~~~


+ `addf`_ symbolic addition
+ `mulf`_ symbolic multiplication
+ `solve`_ symbolic linear system solver
+ `trisolve`_ symbolic linear system solver


.. _solve: solve.html
.. _trisolve: trisolve.html
.. _addf: addf.html
.. _mulf: mulf.html


