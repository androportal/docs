


des2ss
======

descriptor to state-space



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Sl]=des2ss(A,B,C,D,E [,tol])
    [Sl]=des2ss(Des)




Arguments
~~~~~~~~~

:A,B,C,D,E real matrices of appropriate dimensions
: :Des list
: :Sl `syslin` list
: :tol real parameter (threshold) (default value `100*%eps`).
:



Description
~~~~~~~~~~~

Descriptor to state-space transform.

`Sl=des2ss(A,B,C,D,E)` returns a linear system `Sl` equivalent to the
descriptor system `(E,A,B,C,D)`.

For index one `(E,A)` pencil, explicit formula is used and for higher
index pencils `rowshuff` is used.

`Sl=des2ss(Des)` with `Des=list('des',A,B,C,D,E)` returns a linear
system `Sl` in state-space form with possibly a polynomial `D` matrix.

A generalized Leverrier algorithm is used.



Examples
~~~~~~~~


::

    s=`poly`_(0,'s');G=[1/(s-1),s;1,2/s^3];
    S1=`tf2des`_(G);S2=`tf2des`_(G,"withD");
    W1=des2ss(S1);W2=des2ss(S2);
    `clean`_(`ss2tf`_(W1))
    `clean`_(`ss2tf`_(W2))




See Also
~~~~~~~~


+ `des2tf`_ descriptor to transfer function conversion
+ `glever`_ inverse of matrix pencil
+ `rowshuff`_ shuffle algorithm


.. _rowshuff: rowshuff.html
.. _glever: glever.html
.. _des2tf: des2tf.html


