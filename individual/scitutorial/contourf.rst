


contourf
========

filled level curves of a surface on a 2D plot



Calling Sequence
~~~~~~~~~~~~~~~~


::

    contourf(x,y,z,nz,[style,strf,leg,rect,nax])




Arguments
~~~~~~~~~

:x,y two real row vectors of size n1 and n2: the grid.
: :z real matrix of size (n1,n2), the values of the function.
: :nz the level values or the number of levels.
    :- If `nz` is an integer, its value gives the number of level curves
    equally spaced from zmin to zmax as follows:

::

        z= zmin + (1:nz)*(zmax-zmin)/(nz+1)

    Note: that the `zmin` and `zmax` levels are not drawn (generically
    they are reduced to points) but they can be added with

::

        [im,jm] = `find`_(z == zmin);     // or zmax 
        `plot2d`_(x(im)',y(jm)',-9,"000")


    : :- If `nz` is a vector, `nz(i)` gives the value of the ith level
      curve.
    :

: :style,strf,leg,rect,nax see `plot2d`. The argument `style` gives
  the colors which are to be used for level curves. It must have the
  same size as the number of levels.
:



Description
~~~~~~~~~~~

`contourf` paints surface between two consecutives level curves of a
surface `z=f(x,y)` on a 2D plot. The values of `f(x,y)` are given by
the matrix `z` at the grid points defined by `x` and `y`.

You can change the format of the floating point number printed on the
levels by using `xset("fpf",string)` where `string` gives the format
in C format syntax (for example `string="%.3f"`). Use `string=""` to
switch back to default format.

Enter the command `contourf()` to see a demo.



Sample
~~~~~~



Examples
~~~~~~~~


::

    contourf(1:10,1:10,`rand`_(10,10),5,1:5,"011"," ",[0,0,11,11])
    
    function z=peaks(x, y)
    x1=x(:).*.`ones`_(1,`size`_(y,'*'));
    y1=y(:)'.*.`ones`_(`size`_(x,'*'),1);
    z =  (3*(1-x1).^2).*`exp`_(-(x1.^2) - (y1+1).^2) ... 
       - 10*(x1/5 - x1.^3 - y1.^5).*`exp`_(-x1.^2-y1.^2) ... 
       - 1/3*`exp`_(-(x1+1).^2 - y1.^2) 
    endfunction
    
    function z=peakit()
    x=-4:0.1:4;y=x;z=peaks(x,y);
    endfunction
    
    z=peakit();
    
    levels=[-6:-1,-`logspace`_(-5,0,10),`logspace`_(-5,0,10),1:8];
    m=`size`_(levels,'*');
    n = `fix`_(3/8*m);
    r = [(1:n)'/n; `ones`_(m-n,1)];
    g = [`zeros`_(n,1); (1:n)'/n; `ones`_(m-2*n,1)];
    b = [`zeros`_(2*n,1); (1:m-2*n)'/(m-2*n)];
    h = [r g b];
    `xset`_('colormap',h);
    `xset`_('fpf',' ');
    `clf`_();
    contourf([],[],z,[-6:-1,-`logspace`_(-5,0,10),`logspace`_(-5,0,10),1:8],0*`ones`_(1,m))
    
    `xset`_('fpf','');
    `clf`_();
    contourf([],[],z,[-6:-1,-`logspace`_(-5,0,10),`logspace`_(-5,0,10),1:8]);




See Also
~~~~~~~~


+ `contour`_ level curves on a 3D surface
+ `fcontour`_ level curves on a 3D surface defined by a function
  (obsolete function)
+ `fcontour2d`_ Level curves of a surface defined by a function on a
  2D plot (obsolete function)
+ `contour2di`_ compute level curves of a surface on a 2D plot
+ `plot2d`_ 2D plot
+ `xset`_ set values of the graphics context.This function is
  obsolete.


.. _fcontour: fcontour.html
.. _contour2di: contour2di.html
.. _fcontour2d: fcontour2d.html
.. _plot2d: plot2d.html
.. _contour: contour.html
.. _xset: xset.html


