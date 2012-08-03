====
"lyap"
====

Scilab Function Last update : April 1993
**lyap** - Lyapunov equation



Calling Sequence
~~~~~~~~~~~~~~~~

[X]=lyap(A,C,'c')
[X]=lyap(A,C,'d')




Parameters
~~~~~~~~~~


+ **A, C** : real square matrices, **C** must be symmetric




Description
~~~~~~~~~~~

**X = lyap(A,C,flag)** solves the continuous time or discrete time
matrix Lyapunov matrix equation:


::

    
    
           A'*X + X*A = C       ( flag='c' )
          A'*X*A - X = C       ( flag='d' )
       
        


Note that a unique solution exist if and only if an eigenvalue of
**A** is not an eigenvalue of **-A** ( **flag='c'** ) or 1 over an
eigenvalue of **A** ( **flag='d'** ).



Examples
~~~~~~~~


::

    
    
    A=rand(4,4);C=rand(A);C=C+C';
    X=lyap(A,C,'c');
    A'*X + X*A -C
    X=lyap(A,C,'d');
    A'*X*A - X -C
     
      




See Also
~~~~~~~~

` **sylv** `_,` **ctr_gram** `_,` **obs_gram** `_,

.. _
      : ://./linear/sylv.htm
.. _
      : ://./linear/../control/obs_gram.htm
.. _
      : ://./linear/../control/ctr_gram.htm


