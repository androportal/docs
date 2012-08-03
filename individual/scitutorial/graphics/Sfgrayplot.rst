====
"Sfgrayplot"
====

Scilab Function Last update : 03/05/2005
**Sfgrayplot** - smooth 2D plot of a surface defined by a function
using colors



Calling Sequence
~~~~~~~~~~~~~~~~

Sfgrayplot(x,y,f,<opt_args>)
Sfgrayplot(x,y,f [,strf, rect, nax, zminmax, colminmax, mesh, colout])




Parameters
~~~~~~~~~~


+ **x,y** : real row vectors of size n1 and n2.
+ **f** : scilab function (z=f(x,y))
+ **<opt_args>** : This represents a sequence of statements
  **key1=value1, key2=value2** ,... where **key1** , **key2,...** can be
  one of the following: strf, rect, nax, zminmax, colminmax, mesh,
  colout (see ` **plot2d** `_ for the 3 first and ` **fec** `_ for the 4
  last).
+ **strf,rect,nax** : see ` **plot2d** `_.
+ **zminmax, colminmax, mesh, colout** : see ` **fec** `_.




Description
~~~~~~~~~~~

**Sfgrayplot** is the same as **fgrayplot** but the plot is smoothed.
The function **fec** is used for smoothing. The surface is plotted
assuming that it is linear on a set of triangles built from the grid
(here with n1=5, n2=3):


::

    
                 _____________
                 | /| /| /| /|
                 |/_|/_|/_|/_| 
                 | /| /| /| /| 
                 |/_|/_|/_|/_|


The function ` **colorbar** `_ may be used to see the color scale (but
you must know (or compute) the min and max values).

Instead of Sfgrayplot, you can use ` **Sgrayplot** `_ and this may be
a little faster.

Enter the command **Sfgrayplot()** to see a demo.



Examples
~~~~~~~~


::

    
    // example #1: plot 4 surfaces
    function z=surf1(x,y), z=x*y, endfunction
    function z=surf2(x,y), z=x^2-y^2, endfunction
    function z=surf3(x,y), z=x^3+y^2, endfunction
    function z=surf4(x,y), z=x^2+y^2, endfunction
    xbasc()
    xset("colormap",[jetcolormap(64);hotcolormap(64)])
    ng = get("figure_style") == "new";
    x = linspace(-1,1,60);
    y = linspace(-1,1,60);
    if ng then, drawlater(), end
    subplot(2,2,1)
       colorbar(-1,1,[1,64])
       Sfgrayplot(x,y,surf1,strf="041",colminmax=[1,64])
       xtitle("f(x,y) = x*y")
    subplot(2,2,2)
       colorbar(-1,1,[65,128])
       Sfgrayplot(x,y,surf2,strf="041",colminmax=[65,128])
       xtitle("f(x,y) = x^2-y^2")
    subplot(2,2,3)
       colorbar(-1,2,[65,128])
       Sfgrayplot(x,y,surf3,strf="041",colminmax=[65,128])
       xtitle("f(x,y) = x^3+y^2")
    subplot(2,2,4)
       colorbar(0,2,[1,64])
       Sfgrayplot(x,y,surf4,strf="041",colminmax=[1,64])
       xtitle("f(x,y) = x^2+y^2")
    if ng then, drawnow(), end
    xselect()
    
    // example #2: plot surf3 and add some contour lines 
    function z=surf3(x,y), z=x^3+y^2, endfunction
    xbasc()
    x = linspace(-1,1,60);
    y = linspace(-1,1,60);
    xset("colormap",hotcolormap(128))
    ng = get("figure_style") == "new";
    if ng then, drawlater(), end
    colorbar(-1,2)
    Sfgrayplot(x,y,surf3,strf="041")
    fcontour2d(x,y,surf3,[-0.1, 0.025, 0.4],style=[1 1 1],strf="000")
    xtitle("f(x,y) = x^3+y^2")
    if ng then, drawnow(), end
    xselect()
    
    // example #3: plot surf3 and use zminmax and colout optional arguments
    //             to restrict the plot for -0.5<= z <= 1
    function z=surf3(x,y), z=x^3+y^2, endfunction
    xbasc()
    x = linspace(-1,1,60);
    y = linspace(-1,1,60);
    xset("colormap",jetcolormap(128))
    ng = get("figure_style") == "new";
    if ng then, drawlater(), end
    zminmax = [-0.5 1]; colors=[32 96];
    colorbar(zminmax(1),zminmax(2),colors)
    Sfgrayplot(x, y, surf3, strf="041", zminmax=zminmax, colout=[0 0], colminmax=colors)
    fcontour2d(x,y,surf3,[-0.5, 1],style=[1 1 1],strf="000")
    xtitle("f(x,y) = x^3+y^2, with parts under z = -0.5 and upper z = 1 removed")
    if ng then, drawnow(), end
    xselect()
     
      




See Also
~~~~~~~~

` **fec** `_,` **fgrayplot** `_,` **grayplot** `_,` **Sgrayplot** `_,



Author
~~~~~~

J.Ph.C.

.. _
        : ://./graphics/plot2d.htm
.. _
      : ://./graphics/fec.htm
.. _
      : ://./graphics/Sgrayplot.htm
.. _
      : ://./graphics/grayplot.htm
.. _
      : ://./graphics/colorbar.htm
.. _
      : ://./graphics/fgrayplot.htm


