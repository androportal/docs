====
"nlev"
====

Scilab Function Last update : April 1993
**nlev** - Leverrier's algorithm



Calling Sequence
~~~~~~~~~~~~~~~~

[num,den]=nlev(A,z [,rmax])




Parameters
~~~~~~~~~~


+ **A** : real square matrix
+ **z** : character string
+ **rmax** : optional parameter (see **bdiag** )




Description
~~~~~~~~~~~

**[num,den]=nlev(A,z [,rmax])** computes **(z*eye()-A)^(-1)**

by block diagonalization of A followed by Leverrier's algorithm on
each block.

This algorithm is better than the usual leverrier algorithm but still
not perfect!



Examples
~~~~~~~~


::

    
    
    A=rand(3,3);x=poly(0,'x');
    [NUM,den]=nlev(A,'x')
    clean(den-poly(A,'x'))
    clean(NUM/den-inv(x*eye()-A))
     
      




See Also
~~~~~~~~

` **coff** `_,` **coffg** `_,` **glever** `_,` **ss2tf** `_,



Author
~~~~~~

F. Delebecque., S. Steer INRIA;

.. _
      : ://./linear/../control/ss2tf.htm
.. _
      : ://./linear/coff.htm
.. _
      : ://./linear/glever.htm
.. _
      : ://./linear/../polynomials/coffg.htm


