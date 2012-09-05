


sylv
====

Sylvester equation.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    sylv(A,B,C,flag)




Arguments
~~~~~~~~~

:A,B,C three real matrices of appropriate dimensions.
: :flag character string ( `'c'` or `'d'`)
:



Description
~~~~~~~~~~~

`X= sylv(A,B,C,'c')` computes `X`, solution of the "continuous time"
Sylvester equation


::

    A*X+X*B=C


`X=sylv(A,B,C,'d')` computes `X`, solution of the "discrete time"
Sylvester equation


::

    A*X*B-X=C




Examples
~~~~~~~~


::

    A=`rand`_(4,4);C=`rand`_(4,3);B=`rand`_(3,3);
    X = sylv(A,B,C,'c');
    `norm`_(A*X+X*B-C)
    X=sylv(A,B,C,'d') 
    `norm`_(A*X*B-X-C)




See Also
~~~~~~~~


+ `lyap`_ Lyapunov equation


.. _lyap: lyap.html


