


zpch2
=====

Chebyshev analog filter



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [zeros,poles,gain]=zpch2(n,A,omegar)




Arguments
~~~~~~~~~

:n integer : filter order
: :A real : attenuation in stop band ( `A>1`)
: :omegar real : cut-off frequency in Hertz
: :zeros resulting filter zeros
: :poles resulting filter poles
: :gain Resulting filter gain
:



Description
~~~~~~~~~~~

Poles and zeros of a type 2 Chebyshev analog filter gain is the gain
of the filter


::

    H(s)=gain*`poly`_(`zeros`_,'s')/`poly`_(poles,'s')




