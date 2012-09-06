


errbar
======

Add vertical error bars on a 2D plot



Calling Sequence
~~~~~~~~~~~~~~~~


::

    errbar(x,y,em,ep)




Arguments
~~~~~~~~~

:x,y,em,ep four matrices of the same size.
:



Description
~~~~~~~~~~~

`errbar` adds vertical error bars on a 2D plot. `x` and `y` have the
same meaning as in `plot2d`. `em(i,j)` and `ep(i,j)` stands for the
error interval on the value `y(i,j)`:
`[y(i,j)-em(i,j),y(i,j)+ep(i,j)]`.

Enter the command `errbar()` to see a demo.



Sample
~~~~~~



Examples
~~~~~~~~


::

    t=[0:0.1:2*%pi]';
    y=[`sin`_(t) `cos`_(t)]; x=[t t];
    `plot2d`_(x,y)
    errbar(x,y,0.05*`ones`_(x),0.03*`ones`_(x))




See Also
~~~~~~~~


+ `plot2d`_ 2D plot


.. _plot2d: plot2d.html


