


xsegs
=====

draw unconnected segments



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xsegs(xv,yv,[style])
    xsegs(xv,yv,zv,[style])




Arguments
~~~~~~~~~

:xv, yv, zv matrices of the same size. If `zv` is not specified, a
  zero vector is used.
: :style vector or scalar. If `style` is a positive scalar, it gives
  the color to use for all segments. If `style` is a negative scalar,
  then current color is used. If `style` is a vector, then `style(i)`
  gives the color to use for segment `i`.
:



Description
~~~~~~~~~~~

`xsegs` draws a set of unconnected segments given by `xv`, `yv` and
`zv`. If `xv`, `yv` and `zv` are matrices they are considered as
vectors by concatenating their columns. The coordinates of the two
points defining a segment are given by two consecutive values of `xv`,
`yv` and `zv`:

`(xv(i),yv(i),zv(i))-->(xv(i+1),yv(i+1),zv(i+1))`.

For instance, using matrices of size (2,n), the segments can be
defined by:


::

    xv=[xi_1 xi_2 ...; xf_1 xf_2...]
    yv=[yi_1 yi_2 ...; yf_1 yf_2...]
    zv=[zi_1 zi_2 ...; zf_1 zf_2...]


and the segments are `(xi_k,yi_k,zi_k)-->(xf_k,yf_k,zf_k)`.



Sample
~~~~~~



Examples
~~~~~~~~


::

    // 2D example
    x=2*%pi*(0:9)/10;
    xv=[`sin`_(x);9*`sin`_(x)];
    yv=[`cos`_(x);9*`cos`_(x)];
    `plot2d`_([-10,10],[-10,10],[-1,-1],"022")
    xsegs(xv,yv,1:10)



::

    // 2D example
    `plot2d`_([-10,10],[-10,10],[-1,-1],"022")
    xsegs([9, -9],[9 , -9]) // Draw the line from X(9,9) to Y(-9, -9)
    xsegs([5, -2],[4 , -1]) // Draw the line from X(5,4) to Y(-2, -1)



::

    // 3D example
    `clf`_();
    a=`gca`_();
    a.view="3d";
    f=`gcf`_();
    f.color_map=`rainbowcolormap`_(120);
    alpha=2*%pi*(0:119)/40;
    xv=[`sin`_(alpha)/2;`sin`_(alpha)/3];
    yv=[`cos`_(alpha)/2;`cos`_(alpha)/3];
    zv=[alpha/8;alpha/8];
    xsegs(xv,yv,zv,1:120);
    // Now adjust the data_bounds
    a.data_bounds = [`min`_(xv) `min`_(yv) `min`_(zv); ...
                     `max`_(xv) `max`_(yv) `max`_(zv)];
    // We can add an arrow to each segs
    e = `gce`_();
    e.arrow_size = 0.4;




