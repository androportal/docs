


acscd
=====

computes the element-wise inverse cosecant of the argument, results in
degree.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y = acscd(x)




Arguments
~~~~~~~~~

:x Real array.
: :y Real or complex array.
:



Description
~~~~~~~~~~~

Computes the element-wise inverse cosecant of the argument an return
the results in degree. For real argument with absolute value greater
than 1 the result is real.



Sample
~~~~~~



Examples
~~~~~~~~


::

    x=`linspace`_(1,20,200);
    x=[-x($:-1:1) %nan x];
    `plot`_(x,acscd(x))




See Also
~~~~~~~~


+ `cscd`_ Computes the element-wise cosecant of the argument given in
  degree.
+ `acsc`_ computes the element-wise inverse cosecant of the argument.




References
~~~~~~~~~~


+ Kahan, W., "Branch cuts for complex elementary functions, or, Much
  ado about nothing's sign bit", Proceedings of the joing IMA/SIAM
  conference on The State of the Art in Numerical Analysis, University
  of Birmingham, A. Iserles and M.J.D. Powell, eds, Clarendon Press,
  Oxford, 1987, 165-210.


.. _cscd: cscd.html
.. _acsc: acsc.html


