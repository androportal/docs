


cosm
====

matrix cosine function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    t=cosm(x)




Arguments
~~~~~~~~~

:x real or complex square matrix
:



Description
~~~~~~~~~~~

`cosm(x)` is the matrix cosine of the x matrix.
`t=0.5*(expm(%i*x)+expm(-%i*x))`.



Examples
~~~~~~~~


::

    A=[1,2;3,4]
    cosm(A)-0.5*(`expm`_(%i*A)+`expm`_(-%i*A))




See Also
~~~~~~~~


+ `cos`_ cosine function
+ `expm`_ square matrix exponential


.. _expm: expm.html
.. _cos: cos.html


