====
"obsv_mat"
====

Scilab Function Last update : April 1993
**obsv_mat** - observability matrix



Calling Sequence
~~~~~~~~~~~~~~~~

[O]=obsv_mat(A,C)
[O]=obsv_mat(sl)




Parameters
~~~~~~~~~~


+ **A,C,O** : real matrices
+ **sl** : **syslin** list




Description
~~~~~~~~~~~

**obsv_mat** returns the observability matrix:


::

    
    
    O=[C; CA; CA^2;...; CA^(n-1) ]
       
        




See Also
~~~~~~~~

` **contrss** `_,` **obsvss** `_,` **obs_gram** `_,

.. _
      : ://./control/obsvss.htm
.. _
      : ://./control/contrss.htm
.. _
      : ://./control/obs_gram.htm


