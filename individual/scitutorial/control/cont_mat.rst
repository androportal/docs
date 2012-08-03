====
"cont_mat"
====

Scilab Function Last update : April 1993
**cont_mat** - controllability matrix



Calling Sequence
~~~~~~~~~~~~~~~~

Cc=cont_mat(A,B)
Cc=cont_mat(sl)




Parameters
~~~~~~~~~~


+ **a,b** : two real matrices of appropriate dimensions
+ **sl** : linear system ( **syslin** list)




Description
~~~~~~~~~~~

**cont_mat** returns the controllability matrix of the pair **A,B**
(resp. of the system **sl=[A,B,C,D]** ).


::

    
    
    Cc=[B, AB, A^2 B,..., A^(n-1) B]  
       
        




See Also
~~~~~~~~

` **ctr_gram** `_,` **contr** `_,` **canon** `_,` **st_ility** `_,

.. _
      : ://./control/canon.htm
.. _
      : ://./control/contr.htm
.. _
      : ://./control/ctr_gram.htm
.. _
      : ://./control/st_ility.htm


