


systmat
=======

system matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Sm]=systmat(Sl);




Arguments
~~~~~~~~~

:Sl linear system ( `syslin` list) or descriptor system
: :Sm matrix pencil
:



Description
~~~~~~~~~~~

System matrix of the linear system `Sl` ( `syslin` list) in state-
space form (utility function).


::

    Sm = [-sI + A   B;
         [    C     D]


For a descriptor system ( `Sl=list('des',A,B,C,D,E)`), `systmat`
returns:


::

    Sm = [-sE + A   B;
         [    C     D]




See Also
~~~~~~~~


+ `ss2des`_ (polynomial) state-space to descriptor form
+ `sm2des`_ system matrix to descriptor
+ `sm2ss`_ system matrix to state-space


.. _ss2des: ss2des.html
.. _sm2ss: sm2ss.html
.. _sm2des: sm2des.html


