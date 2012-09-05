


solve
=====

symbolic linear system solver



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [x]=solve(A,b)




Arguments
~~~~~~~~~

:A,b,x matrix (resp. vectors) of character strings
:



Description
~~~~~~~~~~~

solves `A*x = b` when `A` is an upper triangular matrix made of
character strings.



Examples
~~~~~~~~


::

    A=['1','a';'0','2'];   //Upper triangular 
    b=['x';'y'];
    
    w=solve(A,b)
    
    a=1;x=2;y=5;
    `evstr`_(w)
    `inv`_([1,1;0,2])*[2;5]




See Also
~~~~~~~~


+ `trianfml`_ symbolic triangularization


.. _trianfml: trianfml.html


