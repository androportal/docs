====
"obs_gram"
====

Scilab Function Last update : April 1993
**obs_gram** - observability gramian



Calling Sequence
~~~~~~~~~~~~~~~~

Go=obs_gram(A,C [,dom])
Go=obs_gram(sl)




Parameters
~~~~~~~~~~


+ **A,C** : real matrices (of appropriate dimensions)
+ **dom** : string ( **"d'** or **"c"** (default value))
+ **sl** : **syslin** list




Description
~~~~~~~~~~~

Observability gramian of the pair **(A,C)** or linear system **sl** (
**syslin** list). **dom** is the domain which can be

**"c"**: continuous system (default)
**"d"**: discrete system




Examples
~~~~~~~~


::

    
    
    A=-diag(1:3);C=rand(2,3);
    Go=obs_gram(A,C,'c');     // <=> w=syslin('c',A,[],C); Go=obs_gram(w);
    norm(Go*A+A'*Go+C'*C,1)
    norm(lyap(A,-C'*C,'c')-Go,1)
    A=A/4; Go=obs_gram(A,C,'d');    //discrete time case
    norm(lyap(A,-C'*C,'d')-Go,1)
     
      




See Also
~~~~~~~~

` **ctr_gram** `_,` **obsvss** `_,` **obsv_mat** `_,` **lyap** `_,

.. _
      : ://./control/obsvss.htm
.. _
      : ://./control/../linear/lyap.htm
.. _
      : ://./control/ctr_gram.htm
.. _
      : ://./control/obsv_mat.htm


