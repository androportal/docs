====
"hankelsv"
====

Scilab Function Last update : April 1993
**hankelsv** - Hankel singular values



Calling Sequence
~~~~~~~~~~~~~~~~

[nk2,W]=hankelsv(sl [,tol])
[nk2]=hankelsv(sl [,tol])




Parameters
~~~~~~~~~~


+ **sl** : **syslin** list representing the linear system (state-
  space).
+ **tol** : tolerance parameter for detecting imaginary axis modes
  (default value is **1000*%eps** ).




Description
~~~~~~~~~~~

returns **nk2** , the squared Hankel singular values of **sl** and **W
= P*Q** = controllability gramian times observability gramian.

**nk2** is the vector of eigenvalues of **W** .



Examples
~~~~~~~~


::

    
    
    A=diag([-1,-2,-3]);
    sl=syslin('c',A,rand(3,2),rand(2,3));[nk2,W]=hankelsv(sl)
    [Q,M]=pbig(W,nk2(2)-%eps,'c');
    slr=projsl(sl,Q,M);hankelsv(slr)
     
      




See Also
~~~~~~~~

` **balreal** `_,` **equil** `_,` **equil1** `_,

.. _
      : ://./robust/../control/equil.htm
.. _
      : ://./robust/../control/balreal.htm
.. _
      : ://./robust/../control/equil1.htm


