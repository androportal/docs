


permute
=======

permute the dimensions of an array



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=permute(x,dims)




Arguments
~~~~~~~~~

:dims a scalar or a vector of positive reals.
: :x a scalar, a vector, a matrix or a mutlti-array.
:



Description
~~~~~~~~~~~

`Permute the dimensions of an array.`



Examples
~~~~~~~~


::

    //example 1:
    x=[1 2 3;4 5 6];
    y=permute(x,[2 1]);
    
    //example 2:
    x=`matrix`_(1:12,[2,3,2]);
    y=permute(x,[3 1 2]);




See Also
~~~~~~~~


+ `pertrans`_ simultaneous permutation and transposition
+ `quote`_ (') transpose operator, string delimiter
+ `cat`_ concatenate several arrays


.. _cat: cat.html
.. _pertrans: pertrans.html
.. _quote: quote.html


