====
"macglov"
====

Scilab Function Last update : April 1993
**macglov** - Mac Farlane Glover problem



Calling Sequence
~~~~~~~~~~~~~~~~

[P,r]=macglov(Sl)




Parameters
~~~~~~~~~~


+ **Sl** : linear system ( **syslin** list)
+ **P** : linear system ( **syslin** list), ``augmented'' plant
+ **r** : 1x2 vector, dimension of **P22**




Description
~~~~~~~~~~~

**[P,r]=macglov(Sl)** returns the standard plant **P** for the Glover-
McFarlane problem.

For this problem ro_optimal = 1-hankel_norm( **[N,M]** ) with
**[N,M]=lcf(sl)** (Normalized coprime factorization) i.e.

gama_optimal = **1/sqrt(ro_optimal)**



Author
~~~~~~

F. Delebecque INRIA



