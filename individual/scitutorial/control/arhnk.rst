====
"arhnk"
====

Scilab Function Last update : April 1993
**arhnk** - Hankel norm approximant



Calling Sequence
~~~~~~~~~~~~~~~~

[slm]=arhnk(sl,ord,[tol])




Parameters
~~~~~~~~~~


+ **sl** : linear system ( **syslin** list)
+ **ord** : integer, order of the approximant
+ **tol** : threshold for rank determination in **equil1**




Description
~~~~~~~~~~~

computes **slm** , the optimal Hankel norm approximant of the stable
continuous-time linear system **sl** with matrices **[A,B,C,D]** .



Examples
~~~~~~~~


::

    
    
    A=diag([-1,-2,-3,-4,-5]);B=rand(5,1);C=rand(1,5);
    sl=syslin('c',A,B,C);
    slapprox=arhnk(sl,2);
    [nk,W]=hankelsv(sl);nk
    [nkred,Wred]=hankelsv(slapprox);nkred
     
      




See Also
~~~~~~~~

` **equil** `_,` **equil1** `_,` **hankelsv** `_,

.. _
      : ://./control/equil.htm
.. _
      : ://./control/../robust/hankelsv.htm
.. _
      : ://./control/equil1.htm


