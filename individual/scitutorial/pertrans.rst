


pertrans
========

simultaneous permutation and transposition



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Y]=pertrans(X)




Arguments
~~~~~~~~~

:X real or complex matrix
: :Y real or complex matrix
:



Description
~~~~~~~~~~~

`Y=pertrans(X)` returns the simultaneous permutation and transposition
of `X`, i.e. the symmetric of `X` with reference to the second
diagonal (utility function).



Examples
~~~~~~~~


::

    A = `matrix`_(1:25,5,5)
    pertrans(A)




See Also
~~~~~~~~


+ `permute`_ permute the dimensions of an array


.. _permute: permute.html


