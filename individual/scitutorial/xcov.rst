


xcov
====

Computes discrete auto or cross covariance



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [c [,lagindex]] = xcov(x [,maxlags [,scaling]])
    [c [,lagindex]] = xcov(x,y [,maxlags [,scaling]])




Parameters
~~~~~~~~~~

:x a vector of real or complex floating point numbers.
: :y a vector of real or complex floating point numbers. The default
  value is `x`.
: :maxlags a scalar with integer value greater than 1. The default
  value is `n`. Where `n` is the maximum of the `x` and `y` vector
  length.
: :scaling a character string with possible value: `"biased"`,
  `"unbiased"`, `"coeff"`, `"none"`. The default value is `"none"`.
: :c a vector of real or complex floating point numbers with same
  orientation as `x`.
: :lagindex a row vector, containing the lags index corresponding to
  the `c` values.
:



Description
~~~~~~~~~~~


+ `c=xcov(x)` computes the un-normalized discrete covariance: and
  return in `c` the sequence of covariance lags with `n` is the length
  of `x`
+ `xcov(x,y)` computes the un-normalized discrete cross covariance:
  and return in `c` the sequence of cross covariance lags with `n` is
  the maximum of `x` and `y` length's.


If the `maxlags` argument is given `xcov` returns in `c` the sequence
of covariance lags . If `maxlags` is greater than `length(x)`, the
first and last values of `c` are zero.

The `scaling` argument decribes how is normalized before being
returned in `c`:

+ "biased": `c=` `/n`.
+ "unbiased": `c=` `./(n-(-maxlags:maxlags))`.
+ "coeff": `c=` `/(norm(x)*norm(y))`.





Remark
~~~~~~
The `corr`_ function computes the "biased" covariance of `x` and `y`
and only return in `c` the sequence of covariance lags .


Method
~~~~~~
This function computes using `xcorr(x-mean(x),y-mean(y),...)`.


Examples
~~~~~~~~


::

    t = `linspace`_(0, 100,2 000);
            y = 0.8 * `sin`_(t) + 0.8 * `sin`_(2 * t);
            [c, ind] = xcov(y, "biased");
            `plot`_(ind, c)




See Also
~~~~~~~~


+ `xcorr`_
+ `corr`_
+ `fft`_




Authors
~~~~~~~


+ Serge Steer, INRIA




Used Functions
~~~~~~~~~~~~~~

`xcorr`_



History
~~~~~~~
Version Description 5.4.0 xcov added.
.. _xcorr: xcorr.html
.. _corr: corr.html
.. _fft: fft.html


