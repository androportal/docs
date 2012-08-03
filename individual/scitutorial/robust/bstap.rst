====
"bstap"
====

Scilab Function Last update : April 1993
**bstap** - hankel approximant



Calling Sequence
~~~~~~~~~~~~~~~~

[Q]=bstap(Sl)




Parameters
~~~~~~~~~~


+ **sl** : linear system ( **syslin** list) assumed continuous-time
  and anti-stable.
+ **Q** : best stable approximation of **Sl** ( **syslin** list).




Description
~~~~~~~~~~~

Computes the best approximant **Q** of the linear system **Sl**

where

||T||

is the H-infinity norm of the Hankel operator associated with **Sl** .



See Also
~~~~~~~~

` **syslin** `_,

.. _
      : ://./robust/../elementary/syslin.htm


