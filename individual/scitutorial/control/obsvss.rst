====
"obsvss"
====

Scilab Function Last update : April 1993
**obsvss** - observable part



Calling Sequence
~~~~~~~~~~~~~~~~

[Ao,Bo,Co]=obsvss(A,B,C [,tol])
[slo]=obsvss(sl [,tol])




Parameters
~~~~~~~~~~


+ **A,B,C,Ao,Bo,Co** : real matrices
+ **sl,slo** : **syslin** lists
+ **tol** : real (threshold) (default value **100*%eps** )




Description
~~~~~~~~~~~

**slo=(Ao,Bo,Co)** is the observable part of linear system
**sl=(A,B,C)** ( **syslin** list)

**tol** threshold to test controllability (see **contr** ); default
value = **100*%eps**



See Also
~~~~~~~~

` **contr** `_,` **contrss** `_,` **obsv_mat** `_,` **obs_gram** `_,

.. _
      : ://./control/obs_gram.htm
.. _
      : ://./control/contr.htm
.. _
      : ://./control/contrss.htm
.. _
      : ://./control/obsv_mat.htm


