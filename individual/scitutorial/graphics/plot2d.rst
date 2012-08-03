====
"plot2d"
====

Scilab Function Last update : 18/10/2005
**plot2d** - 2D plot



Calling Sequence
~~~~~~~~~~~~~~~~

plot2d([x],y)
plot2d([x],y,<opt_args>)




Parameters
~~~~~~~~~~


+ **x** : a real matrice or vector. If omitted, it is assumed to be
  the vector **1:n** where **n** is the number of curve points given by
  the **y** parameter.
+ **y** : a real matrice or vector.
+ **<opt_args>** : This represents a sequence of statements
  **key1=value1,key2=value2** ,... where **key1** , **key2,...** can be
  one of the following:

    + **style** : sets the style for each curve. The associated value
      should be a real vector with integer (positive or negative) values
    + **rect** : sets the mimimal bounds requested for the plot. The
      associated value should be a real vector with four entries:
      **[xmin,ymin,xmax,ymax]** .
    + **logflag** : sets the scale (linear or logarithmic) along the axes.
      The associated value should be a a string with possible values:
      **"nn"** , **"nl"** , **"ln"** and **"ll"** .
    + **frameflag** : controls the computation of the actual coordinate
      ranges from the minimal requested values. The associated value should
      be an integer ranging from 0 to 8.
    + **axesflag** : specifies how the axes are drawn. The associated
      value should be an integer ranging from 0 to 5.
    + **nax** : sets the axes labels and tics definition. The associated
      value should be a real vector with four integer entries
      **[nx,Nx,ny,Ny]**
    + **leg** : sets the curves captions. The associated value should be a
      character string





Description
~~~~~~~~~~~

**plot2d** plots a set of 2D curves. If you are familiar with Matlab
**plot** syntax, you should use ` **plot** `_.



If **x** and **y** are vectors, plot2d(x,y,<opt_args>) plots vector
**y** versus vector **x** . **x** and **y** vectors should have the
same number of entries.

If **x** is a vector and **y** a matrix plot2d(x,y,<opt_args>) plots
each columns of **y** versus vector **x** . In this case the number of
columns of **y** should be equal to the number of **x** entries.

If **x** and **y** are matrices, plot2d(x,y,<opt_args>) plots each
columns of **y** versus corresponding column of **x** . In this case
the **x** and **y** sizes should be the same.

If **y** is a vector, plot2d(y,<opt_args>) plots vector **y** versus
vector **1:size(y,'*')** .

If **y** is a matrix, plot2d(y,<opt_args>) plots each columns of **y**
versus vector **1:size(y,1)** .



The **<opt_args>** arguments sould be used to customize the plot



**style**: This option may be used to specify how the curves are
drawn. If this option is specified, the associated value should be a
vector with as many entries as curves.
    ****if **style(i)** is strictly positive, the curve is drawn as plain
      line and **style(i)** defines the index of the color used to draw the
      curve (see ` **getcolor** `_). Note that the line style and the
      thickness can be set throught the polyline entity properties (see `
      **polyline_properties** `_).Piecewise linear interpolation is done
      between the given curve points.
    ****if **style(i)** is negative or zero, the given curve points are
      drawn using marks, **abs(style(i))** defines the mark with id used.
      Note that the marks color and marks sizes can be set throught the
      polyline entity properties (see ` **polyline_properties** `_).


**logflag**: This option may be used to set the scale (linear or
  logarithmic) along the axes. The associated value should be a a string
  with possible values: **"nn"** , **"nl"** , **"ln"** and **"ll"** .
  **"l"** stands for logarithmic scale and graduations and **"n"** for
  normal scale.
**rect**: This option may be used to set the mimimal bounds requested
  for the plot. If this option is specified, the associated value should
  be a real vector with four entries: **[xmin,ymin,xmax,ymax]** .
  **xmin** and **xmax** defines the bounds on the abscissae while
  **ymin** and **ymax** defines the bounds on the ordinates. This
  argument may be used together with the **frameflag** option to specify
  how the axes boundaries are derived from teh given **rect** argument.
  If the **frameflag** option is not given, it is supposed to be
  **frameflag=7** . The axes boundaries can also be customized throught
  the axes entity properties (see ` **axes_properties** `_).
**frameflag**: This option may be used to control the computation of
the actual coordinate ranges from the minimal requested values. Actual
ranges can be larger than minimal requirements.
    **frameflag=0**: no computation, the plot use the previous (or
      default) scale.
    **frameflag=1**: The actual range is the range given by the **rect**
      option.
    **frameflag=2**: The actual range is computed from the min/max of the
      **x** and **y** data.
    **frameflag=3**: The actual range is the range given by the **rect**
      option and enlarged to get an isometric scale.
    **frameflag=4**: The actual range is computed from the min/max of the
      **x** and **y** data and enlarged to get an isometric scale.
    **frameflag=5**: The actual range is the range given by the **rect**
      option and enlarged to get pretty axes labels.
    **frameflag=6**: The actual range is computed from the min/max of the
      **x** and **y** data and enlarged to get pretty axes labels.
    **frameflag=7**: like **frameflag=1** but the previous plot(s) are
      redrawn to use the new scale. Used to add the current graph to a
      previous one.
    **frameflag=8**: like **frameflag=2** but the previous plot(s) are
      redrawn to use the new scale. Used to add the current graph to a
      previous one.

The axes boundaries can also be customized throught the axes entity
  properties (see ` **axes_properties** `_)
**axesflag**: This option may be used to specify how the axes are
drawn. The associated value should be an integer ranging from 0 to 5 :
    **axesflag=0**: nothing is drawn around the plot.
    **axesflag=1**: axes are drawn, the y=axis is displayed on the left
    **axesflag=2**: the plot is surrounded by a box without tics
    **axesflag=3**: axes are drawn, the y=axis is displayed on the right
    **axesflag=4**: axes are drawn centred in the middle of the frame box
    **axesflag=5**: axes are drawn so as to cross at point (0,0) . If
      point (0,0) does not lie inside the frame, axes will not appear on the
      graph

The axes aspect can also be customized throught the axes entity
  properties (see ` **axes_properties** `_).
**nax**: This option may be used to specify the axes labels and tics
  definition when **axesflag=1** option is used. The associated value
  should be a real vector with four integer entries **[nx,Nx,ny,Ny]** .
  **Nx** gives the number of main tics to be used on the x-axis, **nx**
  gives the number of subtics to be drawn between two main x-axis tics.
  **Ny** and **ny** give similar information for the y-axis.If
  **axesflag** option is not set **nax** option supposes that
  **axesflag** option has been set to 1.
**leg**: This option may be used to sets the curve captions. It must
  be a string with the form **"leg1@leg2@...."** where **leg1** ,
  **leg2** , etc. are respectively the captions of the first curve, of
  the second curve, etc. The default is ** " "** .The curve captions are
  drawn on below the x-axis. This option is not flexible enough, use the
  ` **legends** `_ function preferably.




More information
~~~~~~~~~~~~~~~~

To get more information on the plot2d old syntax , use the `
**plot2d_old_version** `_ help document. By default, successive plots
are superposed. To clear the previous plot, use **clf()** . Enter the
command **plot2d()** to see a demo. Other high level plot2d function
exist:
