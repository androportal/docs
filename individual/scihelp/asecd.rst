


asecd
=====

computes the element-wise inverse secant of the argument, results in
degree.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y = asecd(x)




Arguments
~~~~~~~~~

:x Real or complex array
: :y Real or complex array
:



Description
~~~~~~~~~~~

Computes the element-wise inverse secant of the argument, results in
degree. For real input data with absolute value greater than `1` the
results are real and in `[-90 90]` .

`asecd(x)` is equal to `asec(x)*180/%pi`.



Sample
~~~~~~



Examples
~~~~~~~~


::

    x=[1 2 -2 `sqrt`_(2) -`sqrt`_(2) 2/`sqrt`_(3) -2/`sqrt`_(3) -1];
    asecd(x)




See Also
~~~~~~~~


+ `asec`_ computes the element-wise inverse secant of the argument.
+ `secd`_ Compute the element-wise secant of the argument given in
  degree.




References
~~~~~~~~~~


+ Kahan, W., "Branch cuts for complex elementary functions, or, Much
  ado about nothing's sign bit", Proceedings of the joing IMA/SIAM
  conference on The State of the Art in Numerical Analysis, University
  of Birmingham, A. Iserles and M.J.D. Powell, eds, Clarendon Press,
  Oxford, 1987, 165-210.


.. _secd: secd.html
.. _asec: asec.html


