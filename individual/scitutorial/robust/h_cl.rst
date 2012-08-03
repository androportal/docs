====
"h_cl"
====

Scilab Function Last update : April 1993
**h_cl** - closed loop matrix



Calling Sequence
~~~~~~~~~~~~~~~~

[Acl]=h_cl(P,r,K)
[Acl]=h_cl(P22,K)




Parameters
~~~~~~~~~~


+ **P, P22** : linear system ( **syslin** list), augmented plant or
  nominal plant respectively
+ **r** : 1x2 row vector, dimensions of 2,2 part of **P** (
  **r=[rows,cols]=size(P22)** )
+ **K** : linear system ( **syslin** list), controller
+ **Acl** : real square matrix




Description
~~~~~~~~~~~

Given the standard plant **P** (with **r=size(P22)** ) and the
controller **K** , this function returns the closed loop matrix
**Acl** .

The poles of **Acl** must be stable for the internal stability of the
closed loop system.

**Acl** is the **A** -matrix of the linear system **[I -P22;-K I]^-1**
i.e. the **A** -matrix of **lft(P,r,K)**



See Also
~~~~~~~~

` **lft** `_,



Author
~~~~~~

F. D.

.. _
      : ://./robust/lft.htm


