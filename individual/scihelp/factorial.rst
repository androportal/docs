


factorial
=========

The factorial function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    f = factorial ( n )




Parameters
~~~~~~~~~~

:n : a matrix of doubles. Must contain positive integers.
: :f : a matrix of doubles.
:



Description
~~~~~~~~~~~

Returns the factorial of n, that is, the product of all integers 1 * 2
* ... * n.

This function overflows as soon as n>170.



Examples
~~~~~~~~


::

    // Make a table of factorial
    n = (0:30)';
    [n factorial(n)]
    
    // See the limits of factorial: f(171)=%inf
    factorial(170) // 7.257415615307998967e306
    factorial(171) // %inf
    
    // Plot the function on all its range.
    `scf`_();
    `plot`_ ( 1:170 , factorial , "b-o" )
    h = `gcf`_();
    h.children.log_flags="nln";




Bibliography
~~~~~~~~~~~~

`Introduction to discrete probabilities`_, Michael Baudin

.. _Introduction to discrete probabilities: http://www.scilab.org/en/support/documentation/tutorials


