


Matplot1
========

2D plot of a matrix using colors



Calling Sequence
~~~~~~~~~~~~~~~~


::

    Matplot1(a,rect)




Arguments
~~~~~~~~~

:a real matrix of size (n1,n2).
: :rect `[xmin,ymin,xmax,ymax]`
:



Description
~~~~~~~~~~~

The entries of matrix `int(a)` are used as colormap entries in the
current colormap. `rect` specify a rectangle in the current scale and
the matrix is drawn inside this rectangle. Each matrix entry will be
rendered as a small rectangle filled with its associated color. If a
matrix entry is outside the colormap, the corresponding rectangle is
not displayed.



Sample
~~~~~~



Examples
~~~~~~~~


::

    //--- first example
    `clf`_();
    ax=`gca`_();//get current axes handle
    ax.data_bounds=[0,0;10,10];//set the data_bounds
    ax.box='on'; //draw a box 
    a=5*`ones`_(11,11); a(2:10,2:10)=4; a(5:7,5:7)=2;
    // first matrix in rectangle [1,1,3,3]
    Matplot1(a,[1,1,3,3])
    a=`ones`_(10,10); a= 3*`tril`_(a)+ 2*a; 
    // second matrix in rectangle [5,6,7,8]
    Matplot1(a,[5,6,7,8])
    
    //--- second example  (animation)
    n=100;
    
    `clf`_();
    f=`gcf`_();//get current figure handle
    f.pixmap='on';//double buffer mode
    ax=`gca`_();//get current axes handle
    ax.data_bounds=[0,0;10,10];//set the data_bounds
    ax.box='on'; //draw a box 
    `show_pixmap`_()
    for k=-n:n,
      a=`ones`_(n,n);
      a= 3*`tril`_(a,k)+ 2*a;
      a= a + a';
      k1= 3*(k+100)/200;
      if k>-n then `delete`_(`gce`_()),end
      Matplot1(a,[k1,2,k1+7,9])
      `show_pixmap`_() //send double buffer to screen
      `sleep`_(8); // Slow down the simulation
    end
    f.pixmap='off';




See Also
~~~~~~~~


+ `colormap`_ using colormaps
+ `plot2d`_ 2D plot
+ `Matplot`_ 2D plot of a matrix using colors
+ `grayplot`_ 2D plot of a surface using colors
+ `Matplot_properties`_ description of the Matplot entities properties


.. _Matplot: Matplot.html
.. _Matplot_properties: Matplot_properties.html
.. _grayplot: grayplot.html
.. _plot2d: plot2d.html
.. _colormap: colormap.html


