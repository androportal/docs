====
"h2norm"
====

Scilab Function Last update : April 1993
**h2norm** - H2 norm



Calling Sequence
~~~~~~~~~~~~~~~~

[n]=h2norm(Sl [,tol])




Parameters
~~~~~~~~~~


+ **Sl** : linear system ( **syslin** list)
+ **n** : real scalar




Description
~~~~~~~~~~~

produces the H2 norm of a linear continuous time system **Sl** .

(For **Sl** in state-space form **h2norm** uses the observability
gramian and for **Sl** in transfer form **h2norm** uses a residue
method)



