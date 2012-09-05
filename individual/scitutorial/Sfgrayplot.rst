


Sfgrayplot
==========

smooth 2D plot of a surface defined by a function using colors



Calling Sequence
~~~~~~~~~~~~~~~~


::

    Sfgrayplot(x,y,f,<opt_args>)
    Sfgrayplot(x,y,f [,strf, rect, nax, zminmax, colminmax, mesh, colout])




Arguments
~~~~~~~~~

:x,y real row vectors of size n1 and n2.
: :f scilab function (z=f(x,y))
: :<opt_args> This represents a sequence of statements `key1=value1,
  key2=value2` ,... where `key1`, `key2,...` can be one of the
  following: strf, rect, nax, zminmax, colminmax, mesh, colout (see
  `plot2d`_ for the 3 first and `fec`_ for the 4 last).
: :strf,rect,nax see `plot2d`_.
: :zminmax, colminmax, mesh, colout see `fec`_.
:



Description
~~~~~~~~~~~

`Sfgrayplot` is the same as `fgrayplot` but the plot is smoothed. The
function `fec` is used for smoothing. The surface is plotted assuming
that it is linear on a set of triangles built from the grid (here with
n1=5, n2=3):


::

     
    _____________
    | /| /| /| /|
    |/_|/_|/_|/_| 
    | /| /| /| /| 
    |/_|/_|/_|/_|
     


The function `colorbar`_ may be used to see the color scale (but you
must know (or compute) the min and max values).

Instead of Sfgrayplot, you can use `Sgrayplot`_ and this may be a
little faster.

Enter the command `Sfgrayplot()` to see a demo.



Sample
~~~~~~



Examples
~~~~~~~~


::

    // example #1: plot 4 surfaces
    function z=surf1(x, y), z=x*y, endfunction
    function z=surf2(x, y), z=x^2-y^2, endfunction
    function z=surf3(x, y), z=x^3+y^2, endfunction
    function z=surf4(x, y), z=x^2+y^2, endfunction
    `clf`_()
    `xset`_("colormap",[`jetcolormap`_(64);`hotcolormap`_(64)])
    x = `linspace`_(-1,1,60);
    y = `linspace`_(-1,1,60);
    `drawlater`_() ;
    `subplot`_(2,2,1)
      `colorbar`_(-1,1,[1,64])
      Sfgrayplot(x,y,surf1,strf="041",colminmax=[1,64])
      `xtitle`_("f(x,y) = x*y")
    `subplot`_(2,2,2)
      `colorbar`_(-1,1,[65,128])
      Sfgrayplot(x,y,surf2,strf="041",colminmax=[65,128])
      `xtitle`_("f(x,y) = x^2-y^2")
    `subplot`_(2,2,3)
      `colorbar`_(-1,2,[65,128])
      Sfgrayplot(x,y,surf3,strf="041",colminmax=[65,128])
      `xtitle`_("f(x,y) = x^3+y^2")
    `subplot`_(2,2,4)
      `colorbar`_(0,2,[1,64])
      Sfgrayplot(x,y,surf4,strf="041",colminmax=[1,64])
      `xtitle`_("f(x,y) = x^2+y^2")
    `drawnow`_() ;
    `show_window`_()
    
    // example #2: plot surf3 and add some contour lines 
    function z=surf3(x, y), z=x^3+y^2, endfunction
    `clf`_()
    x = `linspace`_(-1,1,60);
    y = `linspace`_(-1,1,60);
    `xset`_("colormap",`hotcolormap`_(128))
    `drawlater`_() ;
    `colorbar`_(-1,2)
    Sfgrayplot(x,y,surf3,strf="041")
    `fcontour2d`_(x,y,surf3,[-0.1, 0.025, 0.4],style=[1 1 1],strf="000")
    `xtitle`_("f(x,y) = x^3+y^2")
    `drawnow`_() ;
    `show_window`_()
    
    // example #3: plot surf3 and use zminmax and colout optional arguments
    //             to restrict the plot for -0.5<= z <= 1
    function z=surf3(x, y), z=x^3+y^2, endfunction
    `clf`_()
    x = `linspace`_(-1,1,60);
    y = `linspace`_(-1,1,60);
    `xset`_("colormap",`jetcolormap`_(128))
    `drawlater`_() ;
    zminmax = [-0.5 1]; colors=[32 96];
    `colorbar`_(zminmax(1),zminmax(2),colors)
    Sfgrayplot(x, y, surf3, strf="041", zminmax=zminmax, colout=[0 0], colminmax=colors)
    `fcontour2d`_(x,y,surf3,[-0.5, 1],style=[1 1 1],strf="000")
    `xtitle`_("f(x,y) = x^3+y^2, with parts under z = -0.5 and upper z = 1 removed")
    `drawnow`_() ;
    `show_window`_()




See Also
~~~~~~~~


+ `fec`_ pseudo-color plot of a function defined on a triangular mesh
+ `fgrayplot`_ 2D plot of a surface defined by a function using colors
+ `grayplot`_ 2D plot of a surface using colors
+ `Sgrayplot`_ smooth 2D plot of a surface using colors


.. _colorbar: colorbar.html
.. _Sgrayplot: Sgrayplot.html
.. _grayplot: grayplot.html
.. _plot2d: plot2d.html
.. _fgrayplot: fgrayplot.html
.. _fec: fec.html


