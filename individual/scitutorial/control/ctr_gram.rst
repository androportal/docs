====
"ctr_gram"
====

Scilab Function Last update : April 1993
**ctr_gram** - controllability gramian



Calling Sequence
~~~~~~~~~~~~~~~~

[Gc]=ctr_gram(A,B [,dom])
[Gc]=ctr_gram(sl)




Parameters
~~~~~~~~~~


+ **A,B** : two real matrices of appropriate dimensions
+ **dom** : character string ( **'c'** (default value) or **'d'** )
+ **sl** : linear system, **syslin** list




Description
~~~~~~~~~~~

Controllability gramian of **(A,B)** or **sl** (a **syslin** linear
system).

**dom** character string giving the time domain : **"d"** for a
discrete time system and **"c"** for continuous time (default case).



Examples
~~~~~~~~


::

    
    
    A=diag([-1,-2,-3]);B=rand(3,2);
    Wc=ctr_gram(A,B)
    U=rand(3,3);A1=U*A/U;B1=U*B;
    Wc1=ctr_gram(A1,B1)    //Not invariant!
     
      




See Also
~~~~~~~~

` **equil1** `_,` **obs_gram** `_,` **contr** `_,` **cont_mat** `_,`
**cont_frm** `_,` **contrss** `_,



Author
~~~~~~

S. Steer INRIA 1988

.. _
      : ://./control/contrss.htm
.. _
      : ://./control/cont_mat.htm
.. _
      : ://./control/cont_frm.htm
.. _
      : ://./control/contr.htm
.. _
      : ://./control/equil1.htm
.. _
      : ://./control/obs_gram.htm


