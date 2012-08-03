====
"plot2d_old_version"
====

Scilab Function Last update : 16/12/2004
**plot2d_old_version** - 2D plot reference



Calling Sequence
~~~~~~~~~~~~~~~~

plot2d([x],y)
plot2d([x],y,<opt_args>) (new syntax)
plot2d([logflag],x,y,[style,strf,leg,rect,nax]) (old syntax)




Parameters
~~~~~~~~~~


+ **x,y** : two matrices (or column vectors).

    + **** in the usual way **x** is a matrix of the same size than **y**
      (the column j of **y** is plotted with respect to column j of **x** )
    + **** if all the columns of **x** are equal (ie the abscissae of all
      the curves are the same), **x** may be simply the (column) vector of
      these abscissae ( **x** is then a column vector of length equal to the
      row dimension of **y** ).
    + **** when **x** is not given, it is supposed to be the column vector
      [1; 2; ...; row dimension of y].

+ **<opt_args>** : This represents a sequence of statements
  **key1=value1, key2=value2** ,... where **key1** , **key2,...** can be
  one of the following:

    + **style** : sets the style for each curve, see below for value.
    + **leg** : sets the curves captions. If this key is given and
      **strf** is not given then **x** character of **strf** is supposed to
      be **1** . See below for value.
    + **rect** : sets the bounds of the plot. If this key is given and
      neither **frameflag** nor **strf** is given then the **y** character
      of **strf** is supposed to be **7** . See below for value.
    + **nax** : sets the grids definition. If this key is given and
      neither **axesflag** nor **strf** is given then the **z** character of
      **strf** is supposed to be **1** . See below for value.
    + **logflag** : sets the scale (linear or logarithmic) along the axes.
      See below for value.
    + **frameflag** : specifies how the frame of the plot is computed. The
      value is an integer ranging from 0 to 8. It corresponds to the **y**
      character of **strf** . See below.
    + **axesflag** : specifies what kind of axes are drawn around the
      plot. The value is an integer ranging from 0 to 5. It corresponds to
      the **z** character of **strf** . See below.

+ **style** : is a real row vector of size nc. The style to use for
  curve **i** is defined by **style(i)** . The default style is **1:nc**
  (1 for the first curve, 2 for the second, etc.).

    + **-** if **style(i)** is negative or zero, the curve is plotted
      using the mark with id **abs(style(i))** ; use **xset()** to set the
      mark id and xget('mark') to get the current mark id.
    + **-** if **style(i)** is strictly positive, a plain line with color
      id **style(i)** or a dashed line with dash id **style(i)** is used;
      use **xset()** to see the color ids.
    + **-** When only one curve is drawn, **style** can be the row vector
      of size 2 **[sty,pos]** where **sty** is used to specify the style and
      **pos** is an integer ranging from 1 to 6 which specifies a position
      to use for the caption. This can be useful when a user wants to draw
      multiple curves on a plot by calling the function **plot2d** several
      times and wants to give a caption for each curve.

+ **strf** : is a string of length 3 **"xyz"** (by default **strf=
  "081"** )

    + **x** : controls the display of captions.

        + **x=0** : no caption.
        + **x=1** : captions are displayed. They are given by the optional
          argument **leg** .

    + **y** : controls the computation of the actual coordinate ranges
      from the minimal requested values. Actual ranges can be larger than
      minimal requirements.

        + **y=0** : no computation, the plot use the previus (or default)
          scale
        + **y=1** : from the rect arg
        + **y=2** : from the min/max of the x, y datas
        + **y=3** : built for an isometric scale from the rect arg
        + **y=4** : built for an isometric plot from the min/max of the x, y
          datas
        + **y=5** : enlarged for pretty axes from the rect arg
        + **y=6** : enlarged for pretty axes from the min/max of the x, y
          datas
        + **y=7** : like y=1 but the previus plot(s) are redrawn to use the
          new scale
        + **y=8** : like y=2 but the previus plot(s) are redrawn to use the
          new scale

    + **z** : controls the display of information on the frame around the
      plot. If axes are requested, the number of tics can be specified by
      the **nax** optional argument.

        + **z=0** : nothing is drawn around the plot.
        + **z=1** : axes are drawn, the y=axis is displayed on the left.
        + **z=2** : the plot is surrounded by a box without tics.
        + **z=3** : axes are drawn, the y=axis is displayed on the right.
        + **z=4** : axes are drawn centred in the middle of the frame box.
        + **z=5** : axes are drawn so as to cross at point **(0,0)** . If
          point **(0,0)** does not lie inside the frame, axes will not appear on
          the graph.


+ **leg** : a string. It is used when the first character x of
  argument **strf** is 1. **leg** has the form **"leg1@leg2@...."**
  where **leg1** , **leg2** , etc. are respectively the captions of the
  first curve, of the second curve, etc. The default is **""** .
+ **rect** : This argument is used when the second character y of
  argument **strf** is 1, 3 or 5. It is a row vector of size 4 and gives
  the dimension of the frame: **rect=[xmin,ymin,xmax,ymax]** .
+ **nax** : This argument is used when the third character z of
  argument **strf** is 1. It is a row vector with four entries
  **[nx,Nx,ny,Ny]** where **nx** ( **ny** ) is the number of
  subgraduations on the x (y) axis and **Nx** ( **Ny** ) is the number
  of graduations on the x (y) axis.
+ **logflag** : a string formed by to characters h (for horizontal
  axis) and v (for vertical axis) each of these characters can take the
  values "n" or "l". "l" stands for logarithmic graduation and "n" for
  normal graduation. For example "ll"stands for a log-log plot. Default
  value is "nn".




Description
~~~~~~~~~~~

**plot2d** plots a set of 2D curves. Piecewise linear plotting is
used.

By default, successive plots are superposed. To clear the previous
plot, use **xbasc()** .

See the meaning of the parameters above for a complete description.

Enter the command **plot2d()** to see a demo.

Other high level plot2d function exist:

**plot2d2**: same as **plot2d** but the curve is supposed to be
  piecewise constant.
**plot2d3**: same as **plot2d** but the curve is plotted with vertical
  bars.
**plot2d4**: same as **plot2d** but the curve is plotted with arrows.




Examples
~~~~~~~~


::

    
    
    //simple plot 
    x=[0:0.1:2*%pi]';
    plot2d(sin(x))
    xbasc()
    plot2d(x,sin(x))
    //multiple plot
    xbasc()
    plot2d(x,[sin(x) sin(2*x) sin(3*x)])
    // multiple plot giving the dimensions of the frame 
    // old syntax and new syntax
    xbasc()
    plot2d(x,[sin(x) sin(2*x) sin(3*x)],1:3,"011","",[0,0,6,0.5])
    xbasc()
    plot2d(x,[sin(x) sin(2*x) sin(3*x)],rect=[0,0,6,0.5])
    //multiple plot with captions and given tics // old syntax and new syntax
    xbasc()
    plot2d(x,[sin(x) sin(2*x) sin(3*x)],..
      [1,2,3],"111","L1@L2@L3",[0,-2,2*%pi,2],[2,10,2,10]);
    xbasc()
    plot2d(x,[sin(x) sin(2*x) sin(3*x)],..
      [1,2,3],leg="L1@L2@L3",nax=[2,10,2,10],rect=[0,-2,2*%pi,2])
    // isoview
    xbasc()
    plot2d(x,sin(x),1,"041")
    // scale
    xbasc()
    plot2d(x,sin(x),1,"061")
    // auto scaling with previous plots
    xbasc()
    plot2d(x,sin(x),1)
    plot2d(x,2*sin(x),2) 
    plot2d(2*x,cos(x),3)
    // axis on the right 
    xbasc()
    plot2d(x,sin(x),1,"183","sin(x)")
    // centered axis 
    xbasc()
    plot2d(x,sin(x),1,"184","sin(x)")
    // axis centered at (0,0)
    xbasc()
    plot2d(x-4,sin(x),1,"185","sin(x)")
     




See Also
~~~~~~~~

` **plot2d1** `_,` **plot2d2** `_,` **plot2d3** `_,` **plot2d4** `_,`
**xbasc** `_,` **xset** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/plot2d4.htm
.. _
      : ://./graphics/plot2d1.htm
.. _
      : ://./graphics/xbasc.htm
.. _
      : ://./graphics/plot2d3.htm
.. _
      : ://./graphics/plot2d2.htm
.. _
      : ://./graphics/xset.htm


