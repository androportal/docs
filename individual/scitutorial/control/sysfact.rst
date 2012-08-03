====
"sysfact"
====

Scilab Function Last update : April 1993
**sysfact** - system factorization



Calling Sequence
~~~~~~~~~~~~~~~~

[S,Series]=sysfact(Sys,Gain,flag)




Parameters
~~~~~~~~~~


+ **Sys** : **syslin** list containing the matrices **[A,B,C,D]** .
+ **Gain** : real matrix
+ **flag** : string **'post'** or **'pre'**
+ **S** : **syslin** list
+ **Series** : **syslin** list




Description
~~~~~~~~~~~

If **flag** equals **'post'** , **sysfact** returns in **S** the
linear system with ABCD matrices **(A+B*Gain, B , Gain, I)** , and
**Series** , a minimal realization of the series system **Sys*S** . If
**flag** equals **'pre'** , **sysfact** returns the linear system
**(A+Gain*C, Gain , C, I)** and **Series** , a minimal realization of
the series system **S*Sys** .



Examples
~~~~~~~~


::

    
    
    //Kalman filter
    Sys=ssrand(3,2,4);Sys('D')=rand(3,2);
    S=sysfact(Sys,lqr(Sys),'post');
    ww=minss(Sys*S);
    ss2tf(gtild(ww)*ww),Sys('D')'*Sys('D')
    //Kernel
    Sys=ssrand(2,3,4);
    [X,d,F,U,k,Z]=abinv(Sys);
    ss2tf(Sys*Z)
    ss2tf(Sys*sysfact(Sys,F,'post')*U)
     
      




See Also
~~~~~~~~

` **lqr** `_,` **lqe** `_,



Author
~~~~~~

F.D.

.. _
      : ://./control/lqe.htm
.. _
      : ://./control/lqr.htm


