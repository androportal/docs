


acotd
=====

computes the element-wise inverse cotangeant of the argument, result
in degree.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y = acotd(x)




Arguments
~~~~~~~~~

:x Real or complex array.
: :y Real or complex array.
:



Description
~~~~~~~~~~~

Computes the element-wise inverse cotangeant of the argument and
returns the results in degree. For real argument x the result is real.



Sample
~~~~~~



Examples
~~~~~~~~


::

    x=[1 2 -2 `sqrt`_(2) -`sqrt`_(2) 2/`sqrt`_(3) -2/`sqrt`_(3) -1];
    acotd(x)




See Also
~~~~~~~~


+ `cotd`_ element-wise cotangent function, argument in degree
+ `acot`_ computes the element-wise inverse cotangeant of the
  argument.




References
~~~~~~~~~~


+ Kahan, W., "Branch cuts for complex elementary functions, or, Much
  ado about nothing's sign bit", Proceedings of the joing IMA/SIAM
  conference on The State of the Art in Numerical Analysis, University
  of Birmingham, A. Iserles and M.J.D. Powell, eds, Clarendon Press,
  Oxford, 1987, 165-210.


.. _cotd: cotd.html
.. _acot: acot.html


