====
"Sgrayplot"
====

Scilab Function Last update : 13/12/2005
**Sgrayplot** - smooth 2D plot of a surface using colors



Calling Sequence
~~~~~~~~~~~~~~~~

Sgrayplot(x,y,z,<opt_args>)
Sgrayplot(x,y,z [,strf, rect, nax, zminmax, colminmax, mesh, colout])




Parameters
~~~~~~~~~~


+ **x,y** : real row vectors of size n1 and n2.
+ **z** : real matrix of size (n1,n2). **z(i,j)** is the value of the
  surface at the point (x(i),y(j)).
+ **<opt_args>** : This represents a sequence of statements
  **key1=value1,key2=value2** ,... where **key1** , **key2,...** can be
  one of the following: strf, rect, nax, zminmax, colminmax, mesh,
  colout (see ` **plot2d** `_ for the 3 first and ` **fec** `_ for the 4
  last).
+ **strf,rect,nax** : see ` **plot2d** `_.
+ **zminmax, colminmax, mesh, colout** : see ` **fec** `_.




Description
~~~~~~~~~~~

**Sgrayplot** is the same as **grayplot** but the plot is smoothed.
The function **fec** is used for smoothing. The surface is plotted
assuming that it is linear on a set of triangles built from the grid
(here with n1=5, n2=3):


::

    
                 _____________
                 | /| /| /| /|
                 |/_|/_|/_|/_| 
                 | /| /| /| /| 
                 |/_|/_|/_|/_|


The function ` **colorbar** `_ may be used to see the color scale.

The parameter **zminmax** is useful for animation purpose (see an
example after) and the parameter **colminmax** lets the user choose a
part of the current colormap (see the ` **fec** `_ help page).

Enter the command **Sgrayplot()** to see a demo.



Examples
~~~~~~~~


::

    
    // example #1
    x=-10:10; y=-10:10;m =rand(21,21);
    clf()
    xset("colormap",hotcolormap(64))
    Sgrayplot(x,y,m, strf="011", rect=[-20,-20,20,20])
    
    // example #2
    t=-%pi:0.1:%pi; m=sin(t)'*cos(t);
    clf()
    xset("colormap",jetcolormap(64))
    colorbar(-1,1)
    Sgrayplot(t,t,m, strf="041")
    
    // example #3: an animation display cos(t)*sin(x)sin(y).
    // (Remark: this animation uses the old mode)
    n = 30;
    nt = 100;
    x = linspace(0,2*%pi,n);
    y = linspace(0,%pi,n/2);
    z = sin(x')*sin(y);
    t = linspace(0,4*%pi,nt);
    xselect(); clf()
    f=gcf();
    f.color_map=jetcolormap(64);
    f.pixmap='on';
    colorbar(-1,1)
    Sgrayplot(x,y,cos(t(1))*z, strf="042", zminmax=[-1,1])
    c=gce(),e=c.children
    xtitle("Kaa''s eyes")
    for i = 1:nt
       e.data(:,3)=matrix(cos(t(i))*z,-1,1);
       show_pixmap()
    end
    f.pixmap='off';
      




See Also
~~~~~~~~

` **fec** `_,` **fgrayplot** `_,` **grayplot** `_,` **Sfgrayplot**
`_,` **colorbar** `_,



Author
~~~~~~

J.Ph.C.

.. _
        : ://./graphics/plot2d.htm
.. _
      : ://./graphics/fec.htm
.. _
      : ://./graphics/grayplot.htm
.. _
      : ://./graphics/colorbar.htm
.. _
      : ://./graphics/fgrayplot.htm
.. _
      : ://./graphics/Sfgrayplot.htm


