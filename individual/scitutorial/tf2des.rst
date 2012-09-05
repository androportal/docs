


tf2des
======

transfer function to descriptor



Calling Sequence
~~~~~~~~~~~~~~~~


::

    S=tf2des(G)
    S=tf2des(G,flag)




Arguments
~~~~~~~~~

:G linear system ( `syslin` list) with possibly polynomial `D` matrix
: :flag character string `"withD"`
: :S list
:



Description
~~~~~~~~~~~

Transfer function to descriptor form: `S=list('d',A,B,C,D,E)`


::

    E*xdot = A*x+B*u
    y = C*x + D*u


Note that `D=0` if the optional parameter flag= `"withD"` is not
given. Otherwise a maximal rank `D` matrix is returned in the fifth
entry of the list `S`



Examples
~~~~~~~~


::

    s=`poly`_(0,'s');
    G=[1/(s-1),s;1,2/s^3];
    S1=tf2des(G);`des2tf`_(S1)
    S2=tf2des(G,"withD");`des2tf`_(S2)




See Also
~~~~~~~~


+ `pol2des`_ polynomial matrix to descriptor form
+ `tf2ss`_ transfer to state-space
+ `ss2des`_ (polynomial) state-space to descriptor form
+ `des2tf`_ descriptor to transfer function conversion


.. _ss2des: ss2des.html
.. _pol2des: pol2des.html
.. _tf2ss: tf2ss.html
.. _des2tf: des2tf.html


