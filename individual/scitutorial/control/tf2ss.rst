====
"tf2ss"
====

Scilab Function Last update : April 1993
**tf2ss** - transfer to state-space



Calling Sequence
~~~~~~~~~~~~~~~~

sl=tf2ss(h [,tol])




Parameters
~~~~~~~~~~


+ **h** : rational matrix
+ **tol** : may be the constant rtol or the 2 vector **[rtol atol]**

    + **rtol** :tolerance used when evaluating observability.
    + **atol** :absolute tolerance used when evaluating observability.

+ **sl** : linear system ( **syslin** list **sl=[A,B,C,D(s)]** )




Description
~~~~~~~~~~~

transfer to state-space conversion:

**h=C*(s*eye()-A)^-1*B+D(s)**



Examples
~~~~~~~~


::

    
    
    s=poly(0,'s');
    H=[2/s,(s+1)/(s^2-5)];
    Sys=tf2ss(H)
    clean(ss2tf(Sys))
     
      




See Also
~~~~~~~~

` **ss2tf** `_,` **tf2des** `_,` **des2tf** `_,

.. _
      : ://./control/../robust/tf2des.htm
.. _
      : ://./control/ss2tf.htm
.. _
      : ://./control/des2tf.htm


