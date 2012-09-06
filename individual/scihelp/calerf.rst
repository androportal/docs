


calerf
======

computes error functions.



Arguments
~~~~~~~~~

:x real vector or matrix
: :flag integer indicator
: :y real vector or matrix (of same size than x)
:



Description
~~~~~~~~~~~

`calerf(x,0)` computes the error function `erf(x)`

`calerf(x,1)` computes the complementary error function `erfc(x)`

`calerf(x,2)` computes the scaled complementary error function
`erfcx(x)`



Examples
~~~~~~~~


::

    `deff`_('y=f(t)','y=exp(-t^2)');
    calerf(1,0)
    2/`sqrt`_(%pi)*`intg`_(0,1,f)




See Also
~~~~~~~~


+ `erf`_ The error function.
+ `erfc`_ The complementary error function.
+ `erfcx`_ scaled complementary error function.


.. _erfc: erfc.html
.. _erf: erf.html
.. _erfcx: erfcx.html


