====
"subplot"
====

Scilab Function Last update : 03/10/2005
**subplot** - divide a graphics window into a matrix of sub-windows



Calling Sequence
~~~~~~~~~~~~~~~~

subplot(m,n,p)
subplot(mnp)




Parameters
~~~~~~~~~~


+ **m,n,p** : positive integers
+ **mnp** : an integer with decimal notation **mnp**




Description
~~~~~~~~~~~

subplot(m,n,p) or subplot(mnp) breaks the graphics window into an
m-by-n matrix of sub-windows and selects the p-th sub-window for
drawing the current plot. The number of a sub-window into the matrices
is counted row by row ie the sub-window corresponding to element (i,j)
of the matrix has number (i-1)*n + j.



Examples
~~~~~~~~


::

    
    
    subplot(221)
    plot2d()
    subplot(222)
    plot3d()
    subplot(2,2,3)
    param3d()
    subplot(2,2,4)
    hist3d()
     
      




See Also
~~~~~~~~

` **plot2d** `_,` **plot3d** `_,` **xstring** `_,` **xtitle** `_,

.. _
      : ://./graphics/xtitle.htm
.. _
      : ://./graphics/xstring.htm
.. _
      : ://./graphics/plot2d.htm
.. _
      : ://./graphics/plot3d.htm


