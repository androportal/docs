


hist3d
======

3D representation of a histogram



Calling Sequence
~~~~~~~~~~~~~~~~


::

    hist3d(mtx,[theta,alpha,leg,flag,ebox])
    hist3d(mtx,<opt_args>)
    hist3d(list(mtx,x,y),[theta,alpha,leg,flag,ebox])
    hist3d(list(mtx,x,y),<opt_args>)




Arguments
~~~~~~~~~

:mtx matrix of size (m,n) defining the histogram
  `mtx(i,j)=F(x(i),y(j))`, where `x` and `y` are taken as `0:m` and
  `0:n`.
: :list(mtx,x,y) where mtx is a matrix of size (m,n)defining the
  histogram `mtx(i,j)=F(x(i),y(j))`, with `x` and `y` vectors of size
  (1,m+1) and (1,n+1).
: :<opt_args> This represents a sequence of statements `key1=value1,
  key2=value2` ,... where `key1`, `key2,...` can be one of the
  following: theta, alpha,leg,flag,ebox. See `plot3d`_.
: :theta,alpha,leg,flag,ebox see `plot3d`_.
:



Description
~~~~~~~~~~~

`hist3d` represents a 2d histogram as a 3D plot. The values are
associated to the intervals `[x(i) x(i+1)[ X [y(i) y(i+1)[` .

Enter the command `hist3d()` to see a demo.



Sample
~~~~~~



Examples
~~~~~~~~


::

    hist3d(10*`rand`_(10,10));
    
    Z = `zeros`_(100,5);
    A = `abs`_(`rand`_(40,5));
    Z(1:40,:) = A;
    `scf`_();
    hist3d(Z);
    
    Index = `find`_(Z==0);
    Z(Index) = %nan;
    `scf`_();
    hist3d(Z);
    
    A = `abs`_(`rand`_(10,5));
    Z(91:100,:) = A;
    `scf`_();
    hist3d(Z);




See Also
~~~~~~~~


+ `histplot`_ plot a histogram
+ `plot3d`_ 3D plot of a surface


.. _plot3d: plot3d.html
.. _histplot: histplot.html


