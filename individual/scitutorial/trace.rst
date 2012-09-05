


trace
=====

trace



Calling Sequence
~~~~~~~~~~~~~~~~


::

    trace(X)




Arguments
~~~~~~~~~

:X real or complex square matrix, polynomial or rational matrix.
:



Description
~~~~~~~~~~~

`trace(X)` is the trace of the matrix `X`.

Same as `sum(diag(X))`.



Examples
~~~~~~~~


::

    A=`rand`_(3,3);
    trace(A)-`sum`_(`spec`_(A))




See Also
~~~~~~~~


+ `det`_ determinant


.. _det: det.html


