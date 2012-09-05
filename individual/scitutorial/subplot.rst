


subplot
=======

divide a graphics window into a matrix of sub-windows



Calling Sequence
~~~~~~~~~~~~~~~~


::

    subplot(m,n,p)
    subplot(mnp)




Arguments
~~~~~~~~~

:m,n,p positive integers
: :mnp an integer with decimal notation `mnp`
:



Description
~~~~~~~~~~~

subplot(m,n,p) or subplot(mnp) breaks the graphics window into an
m-by-n matrix of sub-windows and selects the p-th sub-window for
drawing the current plot. The number of a sub-window into the matrices
is counted row by row ie the sub-window corresponding to element (i,j)
of the matrix has number (i-1)*n + j.



Sample
~~~~~~



Examples
~~~~~~~~


::

    subplot(221)
    `plot2d`_()
    subplot(222)
    `plot3d`_()
    subplot(2,2,3)
    `param3d`_()
    subplot(2,2,4)
    `hist3d`_()




See Also
~~~~~~~~


+ `plot2d`_ 2D plot
+ `plot3d`_ 3D plot of a surface
+ `xstring`_ draw strings
+ `xtitle`_ add titles on a graphics window


.. _xstring: xstring.html
.. _plot2d: plot2d.html
.. _xtitle: xtitle.html
.. _plot3d: plot3d.html


