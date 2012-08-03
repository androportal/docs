====
"contrss"
====

Scilab Function Last update : April 1993
**contrss** - controllable part



Calling Sequence
~~~~~~~~~~~~~~~~

[slc]=contrss(sl [,tol])




Parameters
~~~~~~~~~~


+ **sl** : linear system ( **syslin** list)
+ **tol** : is a threshold for controllability (see **contr** ).
  default value is **sqrt(%eps)** .




Description
~~~~~~~~~~~

returns the controllable part of the linear system **sl = (A,B,C,D)**
in state-space form.



Examples
~~~~~~~~


::

    
    
    A=[1,1;0,2];B=[1;0];C=[1,1];sl=syslin('c',A,B,C);  //Non minimal
    slc=contrss(sl);
    sl1=ss2tf(sl);sl2=ss2tf(slc);      //Compare sl1 and sl2
     
      




See Also
~~~~~~~~

` **cont_mat** `_,` **ctr_gram** `_,` **cont_frm** `_,` **contr** `_,

.. _
      : ://./control/cont_frm.htm
.. _
      : ://./control/cont_mat.htm
.. _
      : ://./control/ctr_gram.htm
.. _
      : ://./control/contr.htm


