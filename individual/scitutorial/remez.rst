


remez
=====

Remez exchange algorithm for the weighted chebyshev approximation of a
continuous function with a sum of cosines.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    an=remez(guess,mag,fgrid,weight)




Arguments
~~~~~~~~~

:guess real array of size `n+2 the`initial guess
: :fgrid real array of size `ng`: the grid of normalized frequency
  points in [0,.5[
: :mag real array of size `ng`: the desired magnitude on grid `fg`
: :weight real array of size `ng`: weighting function on error on grid
  `fg`
: :an real array of size `n`: cosine coefficients
:



Description
~~~~~~~~~~~

Minimax approximation of a frequency domain magnitude response. The
approximation takes the form


::

    h = `sum`_[a(i)*`cos`_(weight)], i=1:n


An FIR, linear-phase filter can be obtained from the output of `remez`
by using the following commands:


::

    hn(1:nc-1)=an(nc:-1:2)/2;
    hn(nc)=an(1);
    hn(nc+1:2*nc-1)=an(2:nc)/2;


This function is mainly intended to be called by the `remezb
function`_.



Bibliography
~~~~~~~~~~~~

E.W. Cheney, Introduction to Approximation Theory, McGraw-Hill, 1966

`http://en.wikipedia.org/wiki/Remez_algorithm`_



References
~~~~~~~~~~

This function is based on the fortran code `remez.f` written by:


+ James H. Mcclellan, department of electrical engineering and
  computer science, Massachusetts Institute of Technology, Cambridge,
  Massachussets. 02139
+ Thomas W. Parks, department of electrical engineering, Rice
  university, Houston, Texas 77001
+ Thomas W. Parks, department of electrical engineering, Rice
  university, Houston, Texas 77001




Examples
~~~~~~~~


::

    nc=21;
    ngrid=nc*250;
    fgrid=.5*(0:(ngrid-1))/(ngrid-1);
    mag(1:ngrid/2)=`ones`_(1:ngrid/2);
    mag(ngrid/2+1:ngrid)=0*`ones`_(1:ngrid/2);
    weight=`ones`_(fgrid);
    guess=`round`_(1:ngrid/nc:ngrid);
    guess(nc+1)=ngrid;
    guess(nc+2)=ngrid;
    an=remez(guess,mag,fgrid,weight);




See Also
~~~~~~~~


+ `remezb`_ Minimax approximation of magnitude response
+ `eqfir`_ minimax approximation of FIR filter


.. _remezb: remezb.html
.. _http://en.wikipedia.org/wiki/Remez_algorithm: http://en.wikipedia.org/wiki/Remez_algorithm
.. _eqfir: eqfir.html


