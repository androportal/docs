====
"colregul"
====

Scilab Function Last update : April 1993
**colregul** - removing poles and zeros at infinity



Calling Sequence
~~~~~~~~~~~~~~~~

[Stmp,Ws]=colregul(Sl,alfa,beta)




Parameters
~~~~~~~~~~


+ **Sl,Stmp** : **syslin** lists
+ **alfa,beta** : reals (new pole and zero positions)




Description
~~~~~~~~~~~

computes a prefilter **Ws** such that **Stmp=Sl*Ws** is proper and
with full rank **D** matrix.

Poles at infinity of **Sl** are moved to **alfa** ;

Zeros at infinity of **Sl** are moved to **beta** ;

**Sl** is a assumed to be a left invertible linear system ( **syslin**
list) in state-space representation with possibly a polynomial **D**
matrix.



See Also
~~~~~~~~

` **invsyslin** `_,` **inv** `_,` **rowregul** `_,` **rowshuff** `_,



Author
~~~~~~

F. D. , R. N. ;

.. _
      : ://./control/invsyslin.htm
.. _
      : ://./control/rowregul.htm
.. _
      : ://./control/../linear/inv.htm
.. _
      : ://./control/../linear/rowshuff.htm


