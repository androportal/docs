====
"minreal"
====

Scilab Function Last update : April 1993
**minreal** - minimal balanced realization



Calling Sequence
~~~~~~~~~~~~~~~~

slb=minreal(sl [,tol])




Parameters
~~~~~~~~~~


+ **sl,slb** : **syslin** lists
+ **tol** : real (threshold)




Description
~~~~~~~~~~~

**[ae,be,ce]=minreal(a,b,c,domain [,tol]) ** returns the balanced
realization of linear system **sl** ( **syslin** list).

**sl** is assumed stable.

**tol** threshold used in **equil1** .



Examples
~~~~~~~~


::

    
    
    A=[-eye(2,2),rand(2,2);zeros(2,2),-2*eye(2,2)];
    B=[rand(2,2);zeros(2,2)];C=rand(2,4);
    sl=syslin('c',A,B,C);
    slb=minreal(sl);
    ss2tf(sl)
    ss2tf(slb)
    ctr_gram(sl)
    clean(ctr_gram(slb))
    clean(obs_gram(slb))
     
      




See Also
~~~~~~~~

` **minss** `_,` **balreal** `_,` **arhnk** `_,` **equil** `_,`
**equil1** `_,



Author
~~~~~~

S. Steer INRIA 1987

.. _
      : ://./control/equil.htm
.. _
      : ://./control/arhnk.htm
.. _
      : ://./control/equil1.htm
.. _
      : ://./control/minss.htm
.. _
      : ://./control/balreal.htm


