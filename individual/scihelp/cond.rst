


cond
====

condition number



Calling Sequence
~~~~~~~~~~~~~~~~


::

    cond(X)




Arguments
~~~~~~~~~

:X real or complex square matrix
:



Description
~~~~~~~~~~~

Condition number in 2-norm. `cond(X)` is the ratio of the largest
singular value of `X` to the smallest.



Examples
~~~~~~~~


::

    A=`testmatrix`_('hilb',6);
    cond(A)




See Also
~~~~~~~~


+ `rcond`_ inverse condition number
+ `svd`_ singular value decomposition


.. _rcond: rcond.html
.. _svd: svd.html


