====
"equil"
====

Scilab Function Last update : April 1993
**equil** - balancing of pair of symmetric matrices



Calling Sequence
~~~~~~~~~~~~~~~~

T=equil(P,Q)




Parameters
~~~~~~~~~~


+ **P, Q** : two positive definite symmetric matrices
+ **T** : nonsingular matrix




Description
~~~~~~~~~~~

**equil** returns **t** such that:

**T*P*T'** and **inv(T)'*Q*inv(T)** are both equal to a same diagonal
and positive matrix.



Examples
~~~~~~~~


::

    
    
    P=rand(4,4);P=P*P';
    Q=rand(4,4);Q=Q*Q';
    T=equil(P,Q)
    clean(T*P*T')
    clean(inv(T)'*Q*inv(T))
     
      




See Also
~~~~~~~~

` **equil1** `_,` **balanc** `_,` **ctr_gram** `_,

.. _
      : ://./control/../linear/balanc.htm
.. _
      : ://./control/ctr_gram.htm
.. _
      : ://./control/equil1.htm


