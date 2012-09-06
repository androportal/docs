


ndims
=====

number of dimensions of an array



Calling Sequence
~~~~~~~~~~~~~~~~


::

    n=ndims(A)




Arguments
~~~~~~~~~

:A an array
: :n integer, the number of dimensions of the array
:



Description
~~~~~~~~~~~

`n=ndims(A)` return the number of dimension of the array `A`. `n` is
greater than or equal to 2.



Examples
~~~~~~~~


::

    A=`rand`_(2,3);
    ndims(A)
    
    A=`rand`_(2,3,2);
    `size`_(A),ndims(A)
    
    H=[1/%s,1/(%s+1)]
    ndims(H)




See Also
~~~~~~~~


+ `size`_ size of objects


.. _size: size.html


