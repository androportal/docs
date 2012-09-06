


mtlb_var
========

Matlab var emulation function



Arguments
~~~~~~~~~

:x a real or a complex vector or matrix.
: :s a real scalar or real vector.

    + If x is a vector, s is the variance of x.
    + If x is a matrix, s is a row vector containing the variance of each
      column of x.

: :w type of normalization to use. Valid values are, depending on the
number of columns m of x :

    + w = 0 : normalizes with m-1, provides the best unbiased estimator of
      the variance (this is the default).
    + w = 1: normalizes with m, this provides the second moment around the
      mean.

: :dim the dimension along which the variance is computed (default is
  1, i.e. column by column). If dim is 2, the variance is computed row
  by row.
:



Description
~~~~~~~~~~~

This function computes the variance of the values of a vector or
matrix x. It provides the same service as Octave and Matlab. It
differs from Scilab's variance primitive:


+ mtlb_var returns a real (i.e. with a zero imaginary part) variance,
  even if x is a complex vector or matrix. The Scilab variance primitive
  returns a complex value if the input vector x is complex and if no
  option additionnal is used.
+ Whatever the type of the input data x (i.e. vector or matrix),
  mtlb_var computes the variance either on dimension 1 or on dimension 2
  while, if no option is passed to the Scilab's variance primitive, the
  variance is computed on all dimension at once.




Examples
~~~~~~~~

The following 3 examples illustrates the use of the mtlb_var function.
In the first case, a column vector is passed to the function, which
returns the value 750. In the second case, a matrix is passed to the
function, which returns the row vector [0.16 0.09]. In the third case,
a complex column vector is passed to the function, which returns a
value close to 2.


::

    x = [10; 20; 30; 40; 50; 60; 70; 80; 90];
    computed = mtlb_var(x);
    
    x = [0.9    0.7  
        0.1    0.1  
        0.5    0.4];
    computed = mtlb_var(x);
    
    N=1000;
    x = `grand`_(N,1,'nor',0,1) + %i*`grand`_(N,1,'nor',0,1);
    computed = mtlb_var(x);




See Also
~~~~~~~~


+ `variance`_ variance of the values of a vector or matrix


.. _variance: variance.html


