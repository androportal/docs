====
"des2ss"
====

Scilab Function Last update : April 1993
**des2ss** - descriptor to state-space



Calling Sequence
~~~~~~~~~~~~~~~~

[Sl]=des2ss(A,B,C,D,E [,tol])
[Sl]=des2ss(Des)




Parameters
~~~~~~~~~~


+ **A,B,C,D,E** : real matrices of appropriate dimensions
+ **Des** : list
+ **Sl** : **syslin** list
+ **tol** : real parameter (threshold) (default value **100*%eps** ).




Description
~~~~~~~~~~~

Descriptor to state-space transform.

**Sl=des2ss(A,B,C,D,E)** returns a linear system **Sl** equivalent to
the descriptor system **(E,A,B,C,D)** .

For index one **(E,A)** pencil, explicit formula is used and for
higher index pencils **rowshuff** is used.

**Sl=des2ss(Des)** with **Des=list('des',A,B,C,D,E)** returns a linear
system **Sl** in state-space form with possibly a polynomial **D**
matrix.

A generalized Leverrier algorithm is used.



Examples
~~~~~~~~


::

    
    
    s=poly(0,'s');G=[1/(s-1),s;1,2/s^3];
    S1=tf2des(G);S2=tf2des(G,"withD");
    W1=des2ss(S1);W2=des2ss(S2);
    clean(ss2tf(W1))
    clean(ss2tf(W2))
     
      




See Also
~~~~~~~~

` **des2tf** `_,` **glever** `_,` **rowshuff** `_,

.. _
      : ://./robust/../linear/glever.htm
.. _
      : ://./robust/../control/des2tf.htm
.. _
      : ://./robust/../linear/rowshuff.htm


