


des2tf
======

descriptor to transfer function conversion



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [S]=des2tf(sl)
    [Bfs,Bis,chis]=des2tf(sl)




Arguments
~~~~~~~~~

:sl list (linear system in descriptor form)
: :Bfs, Bis two polynomial matrices
: :chis polynomial
: :S rational matrix
:



Description
~~~~~~~~~~~

Given the linear system in descriptor form i.e.
`Sl=list('des',A,B,C,D,E)`, `des2tf` converts `sl` into its transfer
function representation:


::

    S=C*(s*E-A)^(-1)*B+D


Called with 3 outputs arguments `des2tf` returns `Bfs` and `Bis` two
polynomial matrices, and `chis` polynomial such that:


::

    S=Bfs/chis - Bis


`chis` is the determinant of `(s*E-A)` (up to a xcative constant);



Examples
~~~~~~~~


::

    s=`poly`_(0,'s');
    G=[1/(s+1),s;1+s^2,3*s^3];
    Descrip=`tf2des`_(G);Tf1=des2tf(Descrip)
    Descrip2=`tf2des`_(G,"withD");Tf2=des2tf(Descrip2)
    [A,B,C,D,E]=Descrip2(2:6);Tf3=C*`inv`_(s*E-A)*B+D




See Also
~~~~~~~~


+ `glever`_ inverse of matrix pencil
+ `pol2des`_ polynomial matrix to descriptor form
+ `tf2des`_ transfer function to descriptor
+ `ss2tf`_ conversion from state-space to transfer function
+ `des2ss`_ descriptor to state-space
+ `rowshuff`_ shuffle algorithm


.. _tf2des: tf2des.html
.. _glever: glever.html
.. _rowshuff: rowshuff.html
.. _ss2tf: ss2tf.html
.. _des2ss: des2ss.html
.. _pol2des: pol2des.html


