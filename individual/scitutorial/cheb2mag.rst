


cheb2mag
========

response of type 2 Chebyshev filter



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [h2]=cheb2mag(n,omegar,A,sample)




Arguments
~~~~~~~~~

:n integer ; filter order
: :omegar real scalar : cut-off frequency
: :A attenuation in stop band
: :sample vector of frequencies where cheb2mag is evaluated
: :h2 vector of Chebyshev II filter values at sample points
:



Description
~~~~~~~~~~~

Square magnitude response of a type 2 Chebyshev filter.

`omegar` = stopband edge, `sample` = vector of frequencies where the
square magnitude `h2` is desired.



Examples
~~~~~~~~


::

    //Chebyshev; ripple in the stopband
    n=10;omegar=6;A=1/0.2;`sample`_=0.0001:0.05:10;
    h2=cheb2mag(n,omegar,A,`sample`_);
    `plot`_(`sample`_,`log`_(h2)/`log`_(10),'frequencies','magnitude in dB')
    
    //Plotting of frequency edges
    minval=(-`max`_(-`log`_(h2)))/`log`_(10);
    `plot2d`_([omegar;omegar],[minval;0],[2],"000");
    
    //Computation of the attenuation in dB at the stopband edge
    attenuation=-`log`_(A*A)/`log`_(10);
    `plot2d`_(`sample`_',attenuation*`ones`_(`sample`_)',[5],"000")




See Also
~~~~~~~~


+ `cheb1mag`_ response of Chebyshev type 1 filter


.. _cheb1mag: cheb1mag.html


