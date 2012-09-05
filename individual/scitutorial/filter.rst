


filter
======

filters a data sequence using a digital filter



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [y,zf] = filter(num,den,x [,zi])




Arguments
~~~~~~~~~

:num real vector : the coefficients of the filter numerator in
  decreasing power order, or a polynomial.
: :den real vector : the coefficients of the filter denominator in
  decreasing power order, or a polynomial.
: :x real row vector : the input signal
: :zi real row vector of length `max(length(a),length(b))-1`: the
  initial condition relative to a "direct form II transposed" state
  space representation. The default value is a vector filled with zeros.
: :y real row vector : the filtered signal.
: :zf real row vector : the final state. It can be used to filter a
  next batch of the input signal.
:



Description
~~~~~~~~~~~

This function filters a data sequence using a digital filter using a
"direct form II transposed" implementation



References
~~~~~~~~~~

Oppenheim, A. V. and R.W. Schafer. Discrete-Time Signal Processing,
Englewood Cliffs, NJ: Prentice-Hall, 1989, pp. 311-312.



See Also
~~~~~~~~


+ `flts`_ time response (discrete time, sampled system)
+ `rtitr`_ discrete time response (transfer matrix)
+ `ltitr`_ discrete time response (state space)


.. _rtitr: rtitr.html
.. _ltitr: ltitr.html
.. _flts: flts.html


