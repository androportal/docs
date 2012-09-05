


determ
======

determinant of polynomial matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    res=determ(W [,k])




Arguments
~~~~~~~~~

:W real square polynomial matrix
: :k integer (upper bound for the degree of the determinant of W)
:



Description
~~~~~~~~~~~

returns the determinant of a real polynomial matrix (computation made
by FFT if W size is greater than 2*2).

`res=determ(W [,k])` `k` is an integer larger than the actual degree
of the determinant of `W`.

The default value of `k` is the smallest power of 2 which is larger
than `n*max(degree(W))`.

Method (Only if W size is greater than 2*2) : evaluate the determinant
of `W` for the Fourier frequencies and apply inverse FFT to the
coefficients of the determinant.



Examples
~~~~~~~~


::

    s=`poly`_(0,'s');
    w=s*`rand`_(10,10);
    determ(w)
    `det`_(`coeff`_(w,1))*s^10




See Also
~~~~~~~~


+ `det`_ determinant
+ `detr`_ polynomial determinant
+ `coffg`_ inverse of polynomial matrix


.. _coffg: coffg.html
.. _det: det.html
.. _detr: detr.html


