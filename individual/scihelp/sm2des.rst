


sm2des
======

system matrix to descriptor



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Des]=sm2des(Sm);




Arguments
~~~~~~~~~

:Sm polynomial matrix (pencil system matrix)
: :Des descriptor system ( `list('des',A,B,C,D,E)`)
:



Description
~~~~~~~~~~~

Utility function: converts the system matrix:


::

    Sm = [-sE + A   B;
         [    C     D]


to descriptor system `Des=list('des',A,B,C,D,E)`).



See Also
~~~~~~~~


+ `ss2des`_ (polynomial) state-space to descriptor form
+ `sm2ss`_ system matrix to state-space


.. _ss2des: ss2des.html
.. _sm2ss: sm2ss.html


