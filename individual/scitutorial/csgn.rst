


csgn
====

Returns the sign of a vector of real of complex values.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    s = csgn(z)




Arguments
~~~~~~~~~

:z The vector of values on which we want to compute the sign.
: :s If the real part is not equal to zero:

    + +1 if the real part of an element is positive
    + -1 if the real part of an element is negative
If the real part is equal to zero:

    + +1 if the imaginary part of an element is positive
    + -1 if the imaginary part of an element is negative
if the element is equal to zero, then returns %nan
:



Description
~~~~~~~~~~~

Returns the sign of a vector of real of complex values.



Examples
~~~~~~~~


::

    A = [1 1+%i 0 -1 1-%i -1-%i];
    csgn(A)




See Also
~~~~~~~~


+ `sign`_ signum function
+ `signm`_ matrix signum function


.. _sign: sign.html
.. _signm: signm.html


