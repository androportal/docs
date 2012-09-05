


sinc
====

sinc function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    t=sinc(x)




Arguments
~~~~~~~~~

:x real or complex vector or matrix
: :t real or complex vector or matrix
:



Description
~~~~~~~~~~~

If `x` is a vector or a matrix, `t=sinc(x)` is the vector or matrix
such that `t(i)=sin(x(i))/x(i)` if `x(i)~=0` and `t(i)=1` if
`x(i)==0.`



Sample
~~~~~~



Examples
~~~~~~~~


::

    x=`linspace`_(-10,10,3000);
    `plot2d`_(x,sinc(x))




See Also
~~~~~~~~


+ `sin`_ sine function
+ `cos`_ cosine function


.. _cos: cos.html
.. _sin: sin.html


