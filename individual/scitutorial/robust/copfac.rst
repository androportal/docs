====
"copfac"
====

Scilab Function Last update : April 1993
**copfac** - right coprime factorization



Calling Sequence
~~~~~~~~~~~~~~~~

[N,M,XT,YT]=copfac(G [,polf,polc,tol])




Parameters
~~~~~~~~~~


+ **G** : **syslin** list (continuous-time linear system )
+ **polf, polc** : respectively the poles of **XT** and **YT** and the
  poles of **n** and **M** (default values =-1).
+ **tol** : real threshold for detecting stable poles (default value
  **100*%eps** )
+ **N,M,XT,YT** : linear systems represented by **syslin** lists




Description
~~~~~~~~~~~

**[N,M,XT,YT]=copfac(G,[polf,polc,[tol]])** returns a right coprime
factorization of **G** .

**G = N*M^-1** where **N** and **M** are stable, proper and right
coprime. (i.e. **[N M]** left-invertible with stability)

**XT** and **YT** satisfy:

**[XT -YT].[M N]' = eye** (Bezout identity)

**G** is assumed stabilizable and detectable.



See Also
~~~~~~~~

` **syslin** `_,` **lcf** `_,

.. _
      : ://./robust/lcf.htm
.. _
      : ://./robust/../elementary/syslin.htm


