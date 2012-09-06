


zpch1
=====

Chebyshev analog filter



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [poles,gain]=zpch1(n,epsilon,omegac)




Arguments
~~~~~~~~~

:n integer (filter order)
: :epsilon real : ripple in the pass band ( `0<epsilon<1`)
: :omegac real : cut-off frequency in Hertz
: :poles resulting filter poles
: :gain resulting filter gain
:



Description
~~~~~~~~~~~

Poles of a Type 1 Chebyshev analog filter. The transfer function is
given by :


::

    H(s)=gain/`poly`_(poles,'s')




