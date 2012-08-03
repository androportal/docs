====
"Matplot1"
====

Scilab Function Last update : 04/12/2006
**Matplot1** - 2D plot of a matrix using colors



Calling Sequence
~~~~~~~~~~~~~~~~

Matplot1(a,rect)




Parameters
~~~~~~~~~~


+ **a** : real matrix of size (n1,n2).
+ **rect** : **[xmin,ymin,xmax,ymax]**




Description
~~~~~~~~~~~

The entries of matrix **int(a)** are used as colormap entries in the
current colormap. **rect** specify a rectangle in the current scale
and the matrix is drawn inside this rectangle. Each matrix entry will
be rendered as a small rectangle filled with its associated color.



Examples
~~~~~~~~


::

    
    
    //--- first example
    set figure_style new;
    clf();
    ax=gca();//get current axes handle
    ax.data_bounds=[0,0;10,10];//set the data_bounds
    ax.box='on'; //draw a box 
    a=5*ones(11,11); a(2:10,2:10)=4; a(5:7,5:7)=2;
    // first matrix in rectangle [1,1,3,3]
    Matplot1(a,[1,1,3,3])
    a=ones(10,10); a= 3*tril(a)+ 2*a; 
    // second matrix in rectangle [5,6,7,8]
    Matplot1(a,[5,6,7,8])
    
    //--- second example  (animation)
    n=100;
    
    set figure_style new;
    clf();
    f=gcf();//get current figure handle
    f.pixmap='on';//double buffer mode
    ax=gca();//get current axes handle
    ax.data_bounds=[0,0;10,10];//set the data_bounds
    ax.box='on'; //draw a box 
    show_pixmap()
    for k=-n:n,
      a=ones(n,n);
      a= 3*tril(a,k)+ 2*a;
      a= a + a';
      k1= 3*(k+100)/200;
      if k>-n then delete(gce()),end
      Matplot1(a,[k1,2,k1+7,9])
      show_pixmap() //send double buffer to screen
    end
    
     
      




See Also
~~~~~~~~

` **colormap** `_,` **plot2d** `_,` **Matplot** `_,` **grayplot** `_,`
**Matplot_properties** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/plot2d.htm
.. _
      : ://./graphics/Matplot.htm
.. _
      : ://./graphics/grayplot.htm
.. _
      : ://./graphics/Matplot_properties.htm
.. _
      : ://./graphics/colormap.htm


