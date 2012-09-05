


tf2ss
=====

transfer to state-space



Calling Sequence
~~~~~~~~~~~~~~~~


::

    sl=tf2ss(h [,tol])




Arguments
~~~~~~~~~

:h rational matrix
: :tol may be the constant rtol or the 2 vector `[rtol atol]`
    :rtol tolerance used when evaluating observability.
    : :atol absolute tolerance used when evaluating observability.
    :

: :sl linear system ( `syslin` list `sl=[A,B,C,D(s)]`)
:



Description
~~~~~~~~~~~

transfer to state-space conversion:

`h=C*(s*eye()-A)^-1*B+D(s)`



Examples
~~~~~~~~


::

    s=`poly`_(0,'s');
    H=[2/s,(s+1)/(s^2-5)];
    Sys=tf2ss(H)
    `clean`_(`ss2tf`_(Sys))




See Also
~~~~~~~~


+ `ss2tf`_ conversion from state-space to transfer function
+ `tf2des`_ transfer function to descriptor
+ `des2tf`_ descriptor to transfer function conversion


.. _ss2tf: ss2tf.html
.. _tf2des: tf2des.html
.. _des2tf: des2tf.html


