


ss2des
======

(polynomial) state-space to descriptor form



Calling Sequence
~~~~~~~~~~~~~~~~


::

    S=ss2des(Sl)
    S=ss2des(Sl,flag)




Arguments
~~~~~~~~~

:Sl `syslin` list: proper or improper linear system.
: :flag character string `"withD"`
: :S list
:



Description
~~~~~~~~~~~

Given the linear system in state-space representation `Sl` ( `syslin`
list), with a `D` matrix which is either polynomial or constant, but
not zero `ss2des` returns a descriptor system as
`list('des',A,B,C,0,E)` such that:


::

    Sl=C*(s*E-A)^(-1)*B


If the flag `"withD"` is given, `S=list('des',A,B,C,D,E)` with a `D`
matrix of maximal rank.



Examples
~~~~~~~~


::

    s=`poly`_(0,'s');
    G=[1/(s+1),s;1+s^2,3*s^3];Sl=`tf2ss`_(G);
    S=ss2des(Sl)
    S1=ss2des(Sl,"withD")
    Des=`des2ss`_(S);Des(5)=`clean`_(Des(5))
    Des1=`des2ss`_(S1)




See Also
~~~~~~~~


+ `pol2des`_ polynomial matrix to descriptor form
+ `tf2des`_ transfer function to descriptor
+ `des2ss`_ descriptor to state-space


.. _tf2des: tf2des.html
.. _pol2des: pol2des.html
.. _des2ss: des2ss.html


