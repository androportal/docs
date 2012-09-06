


graduate
========

Pretty axis graduations



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [xi,xa,np]=graduate( xmi, xma,n1,n2)
    [xi,xa,np]=graduate( xmi, xma)




Arguments
~~~~~~~~~

:xmi,xma real scalars
: :n1, n2 integers with default values 3,10
: :xi, xa real scalars
: :np integer
:



Description
~~~~~~~~~~~

graduate looks for the minimum interval `[xi,xa]` and a number of tics
`np` such that:

`xi <= xmi <= xma <= xa`

`xa - xi / np = k(10^n)`, `k` in `[1 3 5]` for an integer `n`

`n1 < np < n2`



Examples
~~~~~~~~


::

    y=(0:0.33:145.78)';
    `clf`_();
    `plot2d1`_('enn',0,y)
    [ymn,ymx,np]=graduate(`min`_(y),`max`_(y))
    rect=[1,ymn,`prod`_(`size`_(y)),ymx];
    `clf`_();
    `plot2d1`_('enn',0,y,1,'011',' ',rect,[10,3,10,np])




See Also
~~~~~~~~


+ `xsetech`_ set the sub-window of a graphics window for plotting
+ `plot2d`_ 2D plot


.. _plot2d: plot2d.html
.. _xsetech: xsetech.html


