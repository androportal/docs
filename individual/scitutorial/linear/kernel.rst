====
"kernel"
====

Scilab Function Last update : April 1993
**kernel** - kernel, nullspace



Calling Sequence
~~~~~~~~~~~~~~~~

W=kernel(A [,tol,[,flag])




Parameters
~~~~~~~~~~


+ **A** : full real or complex matrix or real sparse matrix
+ **flag** : character string **'svd'** (default) or **'qr'**
+ **tol** : real number
+ **W** : full column rank matrix




Description
~~~~~~~~~~~

**W=kernel(A)** returns the kernel (nullspace) of **A** . If A has
full column rank then an empty matrix [] is returned.

**flag** and **tol** are optional parameters: **flag = 'qr'** or
**'svd'** (default is **'svd'** ).

**tol** = tolerance parameter (of order **%eps** as default value).



Examples
~~~~~~~~


::

    
    
    A=rand(3,1)*rand(1,3);
    A*kernel(A)
    A=sparse(A);
    clean(A*kernel(A))
     
      




See Also
~~~~~~~~

` **colcomp** `_,` **fullrf** `_,` **fullrfk** `_,` **linsolve** `_,



Author
~~~~~~

F.D.;

.. _
      : ://./linear/linsolve.htm
.. _
      : ://./linear/colcomp.htm
.. _
      : ://./linear/fullrfk.htm
.. _
      : ://./linear/fullrf.htm


