


sm2ss
=====

system matrix to state-space



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Sl]=sm2ss(Sm);




Arguments
~~~~~~~~~

:Sm polynomial matrix (pencil system matrix)
: :Sl linear system ( `syslin` list)
:



Description
~~~~~~~~~~~

Utility function: converts the system matrix:


::

    Sm = [-sI + A   B;
         [    C     D]


to linear system in state-space representation ( `syslin`) list.



See Also
~~~~~~~~


+ `ss2des`_ (polynomial) state-space to descriptor form


.. _ss2des: ss2des.html


