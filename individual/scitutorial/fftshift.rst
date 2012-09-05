


fftshift
========

rearranges the fft output, moving the zero frequency to the center of
the spectrum



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=fftshift(x [,job])




Arguments
~~~~~~~~~

:x real or complex vector or matrix.
: :y real or complex vector or matrix.
: :job integer, dimension selection, or string 'all'
:



Description
~~~~~~~~~~~

if `x` results of an fft computation `y= fftshift(x)` or `y=
fftshift(x,"all")` moves the zero frequency component to the center of
the spectrum, which is sometimes a more convenient form.

If `x` is a vector of size n, y is the vector `x([n/2+1:n,1:n/2])`

If `x` is an `m` by `n` matrix `y` is the matrix
`x([m/2+1:n,1:m/2],[n/2+1:n,1:n/2])`.


::

    [x11 x12]                  [x22 x21]
    x=[       ]        gives   y=[       ]
    [x21 x22]                  [x12 x11]


`y= fftshift(x,n)` make the swap only along the `n`th dimension



Examples
~~~~~~~~


::

    //make a signal
    t=0:0.1:1000;
    x=3*`sin`_(t)+8*`sin`_(3*t)+0.5*`sin`_(5*t)+3*`rand`_(t);
    //compute the fft
    y=`fft`_(x,-1);
    
    //display 
    `clf`_();
    `subplot`_(2,1,1);`plot2d`_(`abs`_(y))
    `subplot`_(2,1,2);`plot2d`_(fftshift(`abs`_(y)))
    
    //make a 2D image
    t=0:0.1:30;
    x=3*`sin`_(t')*`cos`_(2*t)+8*`sin`_(3*t')*`sin`_(5*t)+..
      0.5*`sin`_(5*t')*`sin`_(5*t)+3*`rand`_(t')*`rand`_(t);
    //compute the fft
    y=`fft`_(x,-1);
    
    //display 
    `clf`_();
    `xset`_('colormap',`hotcolormap`_(256))
    `subplot`_(2,1,1);`Matplot`_(`abs`_(y))
    `subplot`_(2,1,2);`Matplot`_(fftshift(`abs`_(y)))




See Also
~~~~~~~~


+ `fft`_ fast Fourier transform.


.. _fft: fft.html


