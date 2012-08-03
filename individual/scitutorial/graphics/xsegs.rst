====
"xsegs"
====

Scilab Function Last update : 27/07/2004
**xsegs** - draw unconnected segments



Calling Sequence
~~~~~~~~~~~~~~~~

xsegs(xv,yv,[style])




Parameters
~~~~~~~~~~


+ **xv,yv** : matrices of the same size.
+ **style** : vector or scalar. If **style** is a positive scalar, it
  gives the color to use for all segments. If **style** is a negative
  scalar, then current color is used. If **style** is a vector, then
  **style(i)** gives the color to use for segment **i** .




Description
~~~~~~~~~~~

**xsegs** draws a set of unconnected segments given by **xv** and
**yv** . If **xv** and **yv** are matrices they are considered as
vectors by concatenating their columns. The coordinates of the two
points defining a segment are given by two consecutive values of
**xv** and **yv** :

**(xv(i),yv(i))-->(xv(i+1),yv(i+1))** .

For instance, using matrices of size (2,n), the segments can be
defined by:


::

    xv=[xi_1 xi_2 ...; xf_1 xf_2 ...] yv=[yi_1 yi_2 ...; yf_1 yf_2
        ...]


and the segments are **(xi_k,yi_k)-->(xf_k,yf_k)** .



Examples
~~~~~~~~


::

    
    
    x=2*%pi*(0:9)/10;
    xv=[sin(x);9*sin(x)];
    yv=[cos(x);9*cos(x)];
    plot2d([-10,10],[-10,10],[-1,-1],"022")
    xsegs(xv,yv,1:10)
     
      




Author
~~~~~~

J.Ph.C.



