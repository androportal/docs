


delip
=====

complete and incomplete elliptic integral of first kind



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [r]=delip(x,ck)




Arguments
~~~~~~~~~

:x real vector/matrix with nonnegative elements
: :ck real number between -1 and 1
: :r real or complex number (or vector/matrix) with the same size as
  `x`
:



Description
~~~~~~~~~~~

The elliptic integral of the first kind with parameter `ck` is defined
as follow:



Where `x` is real and positive, `ck` is in `[-1 1]`.

If `x` is less than 1 the result is real.

When called with `x` a vector/matrix `r` is evaluated for each entry
of `x`.



Examples
~~~~~~~~


::

    ck=0.5;
    delip([1,2],ck)
    `deff`_('y=f(t)','y=1/sqrt((1-t^2)*(1-ck^2*t^2))')
    `intg`_(0,1,f)    //OK since real solution!




See Also
~~~~~~~~


+ `amell`_ Jacobi's am function
+ `%asn`_ elliptic integral
+ `%sn`_ Jacobi 's elliptic function


.. _%sn: percentsn.html
.. _amell: amell.html
.. _%asn: percentasn.html


