


flipdim
=======

flip x components along a given dimension



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=flipdim(x,dim)




Arguments
~~~~~~~~~

:x a scalar, a vector or an array of real or complex numbers.
: :dim a positive integer
: :y a scalar, a vector or an array of reals
:



Description
~~~~~~~~~~~

Given `x`, a scalar/vector/array of real or complex numbers and `dim`
a positive integer, this function flips the x components along the
dimension number `dim` of `x` ( `x` and `y` have the same size)



Examples
~~~~~~~~


::

    // example 1: flip x components along the first dimension
    x=[1 2 3 4; 5 6 7 8];
    dim=1;
    y=flipdim(x,dim)
    
    // example 2: flip x components along the second dimension
    dim=2;
    y=flipdim(x,dim)
    
    // example 3: flip x components along the third dimension
    x=`matrix`_(1:48,[3 2,4,2]);
    dim=3;
    y=flipdim(x,dim)
    
    // Example 4: the first example with complex
    x=[1+%i 2*%i 3 4; 5 6-%i 7 8*%pi*%i];
    dim=1;
    y=flipdim(x,dim)




