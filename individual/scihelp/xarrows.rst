


xarrows
=======

draw a set of arrows



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xarrows(nx,ny,[arsize,style])




Arguments
~~~~~~~~~

:nx,ny real vectors or matrices of same size.
: :arsize real scalar, size of the arrow head. The default value can
  be obtained by setting arsize to -1.
: :style matrix or scalar. If `style` is a positive scalar it gives
  the color to use for all arrows. If it is a negative scalar then the
  current color is used. If it is a vector `style(i)` gives the color to
  use for arrow `i`.
:



Description
~~~~~~~~~~~

`xarrows` draws a set of arrows given by `nx` and `ny`. If `nx` and
`ny` are vectors, the ith arrow is defined by
`(nx(i),ny(i))-->(nx(i+1),ny(i+1))`. If `nx` and `ny` are matrices:


::

    nx=[xi_1 x1_2 ...; xf_1 xf_2 ...]
    ny=[yi_1 y1_2 ...; yf_1 yf_2 ...]


the `k` th arrow is defined by `(xi_k,yi_k)-->(xf_k,yf_k)`.

`xarrows` uses the current graphics scale which can be set by calling
a high level drawing function such as `plot2d`.



Sample
~~~~~~



Examples
~~~~~~~~


::

    x=2*%pi*(0:9)/8;
    x1=[`sin`_(x); 9*`sin`_(x)];
    y1=[`cos`_(x); 9*`cos`_(x)];
    `plot2d`_([-10,10], [-10,10], [-1,-1], "022")
    `xset`_("clipgrf")
    xarrows(x1, y1, 1, 1:10)
    `xset`_("clipoff")




