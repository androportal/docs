====
"dcf"
====

Scilab Function Last update : April 1993
**dcf** - double coprime factorization



Calling Sequence
~~~~~~~~~~~~~~~~

[N,M,X,Y,NT,MT,XT,YT]=dcf(G,[polf,polc,[tol]])




Parameters
~~~~~~~~~~


+ **G** : **syslin** list (continuous-time linear system)
+ **polf, polc** : respectively the poles of **XT** and **YT** and the
  poles of **N** and **M** (default values = **-1** ).
+ **tol** : real threshold for detecting stable poles (default value
  **100*%eps** ).
+ **N,M,XT,YT,NT,MT,X,Y** : linear systems represented by **syslin**
  lists




Description
~~~~~~~~~~~

returns eight stable systems **(N,M,X,Y,NT,MT,XT,YT) ** for the doubly
coprime factorization

**G** must be stabilizable and detectable.



See Also
~~~~~~~~

` **copfac** `_,

.. _
      : ://./robust/copfac.htm


