


erf
===

The error function.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y = erf(x)




Arguments
~~~~~~~~~

:x real vector or matrix
: :y real vector or matrix (of same size than x)
:



Description
~~~~~~~~~~~

`erf` computes the error function:



Examples
~~~~~~~~


::

    `deff`_('y=f(t)','y=exp(-t^2)');
    erf(0.5)-2/`sqrt`_(%pi)*`intg`_(0,0.5,f)




See Also
~~~~~~~~


+ `calerf`_ computes error functions.
+ `cdfnor`_ cumulative distribution function normal distribution
+ `erfc`_ The complementary error function.
+ `erfcx`_ scaled complementary error function.
+ `erfinv`_ inverse error function


.. _calerf: calerf.html
.. _erfcx: erfcx.html
.. _erfc: erfc.html
.. _erfinv: erfinv.html
.. _cdfnor: cdfnor.html


