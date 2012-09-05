


trisolve
========

symbolic linear system solver



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [x [,sexp]] = trisolve(A,b [,sexp])




Arguments
~~~~~~~~~

:A,b matrices of strings
:



Description
~~~~~~~~~~~

symbolically solves `A*x =b` , `A` being assumed to be upper
triangular.

`sexp` is a vector of common subexpressions in `A, b, x`.



Examples
~~~~~~~~


::

    A=['x','y';'0','z'];b=['0';'1'];
    w=trisolve(A,b)
    x=5;y=2;z=4;
    `evstr`_(w)
    `inv`_(`evstr`_(A))*`evstr`_(b)




See Also
~~~~~~~~


+ `trianfml`_ symbolic triangularization
+ `solve`_ symbolic linear system solver


.. _solve: solve.html
.. _trianfml: trianfml.html


