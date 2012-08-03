====
"linsolve"
====

Scilab Function Last update : April 1993
**linsolve** - linear equation solver



Calling Sequence
~~~~~~~~~~~~~~~~

[x0,kerA]=linsolve(A,b [,x0])




Parameters
~~~~~~~~~~


+ **A** : a **na x ma** real matrix (possibly sparse)
+ **b** : a **na x 1** vector (same row dimension as **A** )
+ **x0** : a real vector
+ **kerA** : a **ma x k** real matrix




Description
~~~~~~~~~~~

**linsolve** computes all the solutions to ** A*x+b=0** .

**x0** is a particular solution (if any) and ** kerA= ** nullspace of
**A** . Any **x=x0+kerA*w** with arbitrary **w** satisfies **
A*x+b=0** .

If compatible **x0** is given on entry, **x0** is returned. If not a
compatible **x0** , if any, is returned.



Examples
~~~~~~~~


::

    
    
    A=rand(5,3)*rand(3,8);
    b=A*ones(8,1);[x,kerA]=linsolve(A,b);A*x+b   //compatible b
    b=ones(5,1);[x,kerA]=linsolve(A,b);A*x+b   //uncompatible b
    A=rand(5,5);[x,kerA]=linsolve(A,b), -inv(A)*b  //x is unique
     
      




See Also
~~~~~~~~

` **inv** `_,` **pinv** `_,` **colcomp** `_,` **im_inv** `_,

.. _
      : ://./linear/im_inv.htm
.. _
      : ://./linear/pinv.htm
.. _
      : ://./linear/colcomp.htm
.. _
      : ://./linear/inv.htm


