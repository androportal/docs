====
"cshep2d"
====

Scilab Function Last update : 24/03/2004
**cshep2d** - bidimensional cubic shepard (scattered) interpolation



Calling Sequence
~~~~~~~~~~~~~~~~

tl_coef = cshep2d(xyz)




Parameters
~~~~~~~~~~


+ **xyz** : a n x 3 matrix of the (no gridded) interpolation points
  (the i th row given the (x,y) coordinates then the altitude z of the i
  th interpolation point)
+ **tl_coef** : a tlist scilab structure (of type cshep2d)




Description
~~~~~~~~~~~

This function is useful to define a 2d interpolation function when the
interpolation points are not on a grid (you may use it in this case
but ` **splin2d** `_ is better for that purpose). The interpolant is a
cubic shepard one and is a C2 (twice continuously differentiable)
bivariate function *s(x,y)* such that : *s(xi,yi)=zi* for all
*i=1,..,n* ( *(xi,yi,zi)* being the i th row of **xyz** ).

The evaluation of *s* at some points must be done by the `
**eval_cshep2d** `_ function.



Remark
~~~~~~

The function works if **n >= 10**, if the nodes are not all colinears
(i.e. the *(x,y)* coordinates of the interpolation points are not on
the same straight line), and if there is no duplicate nodes (i.e. 2 or
more interpolation points with the same *(x,y)* coordinates). An error
is issued if these conditions are not respected.



Examples
~~~~~~~~


::

    
    // interpolation of cos(x)cos(y) with randomly choosen interpolation points
    n = 150; // nb of interpolation points
    xy = grand(n,2,"unf",0,2*%pi);
    z = cos(xy(:,1)).*cos(xy(:,2));
    xyz = [xy z];
    tl_coef = cshep2d(xyz);
    
    // evaluation on a grid
    m = 30;
    xx = linspace(0,2*%pi,m);
    [X,Y] = ndgrid(xx,xx);
    Z = eval_cshep2d(X,Y, tl_coef);
    xbasc()
    plot3d(xx,xx,Z,flag=[2 6 4])
    param3d1(xy(:,1),xy(:,2),list(z,-9), flag=[0 0])
    xtitle("Cubic Shepard Interpolation of cos(x)cos(y) with randomly choosen interpolation points")
    legends("interpolation points",-9,1)
    xselect()
     




See Also
~~~~~~~~

` **splin2d** `_,` **eval_cshep2d** `_,



Authors
~~~~~~~

**** Robert J. Renka
**** B. Pincon (scilab interface)


.. _
      : ://./elementary/eval_cshep2d.htm
.. _
      : ://./elementary/splin2d.htm


