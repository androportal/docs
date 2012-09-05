


polar
=====

polar form



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Ro,Theta]=polar(A)




Arguments
~~~~~~~~~

:A real or complex square matrix
: :Ro, real matrix
: :Theta, real or complex matrix
:



Description
~~~~~~~~~~~

`[Ro,Theta]=polar(A)` returns the polar form of `A` i.e.
`A=Ro*expm(%i*Theta)` `Ro` symmetric >=0 and `Theta` hermitian >=0.



Examples
~~~~~~~~


::

    A=`rand`_(5,5);
    [Ro,Theta]=polar(A);
    `norm`_(A-Ro*`expm`_(%i*Theta),1)




See Also
~~~~~~~~


+ `expm`_ square matrix exponential
+ `svd`_ singular value decomposition


.. _expm: expm.html
.. _svd: svd.html


