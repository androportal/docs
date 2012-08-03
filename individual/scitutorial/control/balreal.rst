====
"balreal"
====

Scilab Function Last update : April 1993
**balreal** - balanced realization



Calling Sequence
~~~~~~~~~~~~~~~~

[slb [,U] ] = balreal(sl)




Parameters
~~~~~~~~~~


+ **sl,slb** : linear systems ( **syslin** lists)




Description
~~~~~~~~~~~

Balanced realization of linear system **sl=[A,B,C,D]** . **sl** can be
a continuous-time or discrete-time state-space system. sl is assumed
stable.


::

    
    
    slb=[inv(U)*A*U ,inv(U)*B , C*U , D]
       
        


is the balanced realization.

**slb** is returned as a **syslin** list.



Examples
~~~~~~~~


::

    
    
    A=diag([-1,-2,-3,-4,-5]);B=rand(5,2);C=rand(1,5);
    sl=syslin('c',A,B,C);
    [slb,U]=balreal(sl);
    Wc=clean(ctr_gram(slb))
    W0=clean(obs_gram(slb))
     
      




See Also
~~~~~~~~

` **ctr_gram** `_,` **obs_gram** `_,` **hankelsv** `_,` **equil** `_,`
**equil1** `_,

.. _
      : ://./control/equil.htm
.. _
      : ://./control/ctr_gram.htm
.. _
      : ://./control/../robust/hankelsv.htm
.. _
      : ://./control/equil1.htm
.. _
      : ://./control/obs_gram.htm


