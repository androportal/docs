


xchange
=======

transform real to pixel coordinates



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [x1,y1,rect]=xchange(x,y,dir)




Arguments
~~~~~~~~~

:x,y two matrices of size (n1,n2) (coordinates of a set of points).
: :dir parameter used to specify the conversion type (See
  "Description" for details)
: :x1,y1 two matrices of size (n1,n2) (coordinates of the set of
  points).
: :rect a vector of size 4.
:



Description
~~~~~~~~~~~

After having used a graphics function, `xchange` computes pixel
coordinates from real coordinates and conversely, according to the
value of the parameter `dir`: "f2i" (float to int) means real to pixel
and "i2f" (int to float) means pixel to real. `x1` and `y1` are the
new coordinates of the set of points defined by the old coordinates
`x` and `y`.

`rect` is the coordinates in pixel of the rectangle in which the plot
was done: [upper-left point, width, height].



Examples
~~~~~~~~


::

    t=[0:0.1:2*%pi]';
    `plot2d`_(t,`sin`_(t))
    [x,y,rect]=xchange(1,1,"f2i")
    [x,y,rect]=xchange(0,0,"i2f")




