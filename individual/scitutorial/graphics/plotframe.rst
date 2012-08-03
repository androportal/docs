====
"plotframe"
====

Last update : 22/03/2007
**plotframe** - plot a frame with scaling and grids



Calling Sequence
~~~~~~~~~~~~~~~~

plotframe(rect,tics,[arg_opt1,arg_opt2,arg_opt3])
plotframe(rect,<opts_args>)




Parameters
~~~~~~~~~~


+ **rect** : vector **[xmin,ymin,xmax,ymax]** .
+ **tics** : vector **[nx,mx,ny,my]** where **mx, nx** (resp. **my,
  ny** ) are the number of x-axis (resp. y-axis) intervals and
  subintervals.
+ **arg_optX** : optional arguments up to three and choosen among.

    + **flags** : vector **[wantgrids,findbounds]** where **wantgrids** is
      a boolean variable ( **%t** or **%f** ) which indicates gridding.
      **findbounds** is a boolean variable. If **findbounds** is **%t** ,
      the bounds given in **rect** are allowed to be slightly modified (in
      fact always increased) in order to have simpler graduations: then
      **tics(2)** and **tics(4)** are ignored.
    + **captions** : vector of 3 strings **[title,x-leg,y-leg]**
      corresponding respectively to the title of the plot and the captions
      on the x-axis and the y-axis.
    + **subwin** : a vector of size 4 defining the sub window. The sub
      window is specified with the parameter **subwin=[x,y,w,h]** (upper-
      left, width, height). The values in **subwin** are specified using
      proportion of the width or height of the current graphics window (see
      **xsetech** ).

+ **<opts_args>** : This represents a sequence of statements
  **key1=value1**, ** key2=value2**,... where **key1**, **key2**,... can
  be one of the following: **tics**, **flags**, **captions** ou
  **subwin**. These arguments have the same meaning as the ones used in
  the first form of the routine.




Description
~~~~~~~~~~~

**plotframe** is used with 2D plotting functions **plot2d** ,
**plot2d1** ,... to set a graphics frame. It must be used before
**plot2d** which should be invoked with the "000" superposition mode.



Examples
~~~~~~~~


::

    
    
    x=[-0.3:0.8:27.3]';
    y=rand(x);
    rect=[min(x),min(y),max(x),max(y)];
    tics=[4,10,2,5];    //4 x-intervals and 2 y-intervals
    plotframe(rect,tics,[%f,%f],["My plot","x","y"],[0,0,0.5,0.5])
    plot2d(x,y,2,"000")
    plotframe(rect,tics,[%t,%f],["My plot with grids","x","y"],[0.5,0,0.5,0.5])
    plot2d(x,y,3,"000")
    plotframe(rect,tics,[%t,%t],..
    ["My plot with grids and automatic bounds","x","y"],[0,0.5,0.5,0.5])
    plot2d(x,y,4,"000")
    plotframe(rect,flags=[%f,%t],tics=tics,..
       captions=["My plot without grids but with automatic bounds ","x","y"],..
       subwin=[0.5,0.5,0.5,0.5])
    plot2d(x,y,5,"000")
    xset("default")
     
      




See Also
~~~~~~~~

` **plot2d** `_,` **graduate** `_,` **xsetech** `_,

.. _
      : ://./graphics/xsetech.htm
.. _
      : ://./graphics/plot2d.htm
.. _
      : ://./graphics/graduate.htm


