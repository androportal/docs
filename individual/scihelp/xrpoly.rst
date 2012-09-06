


xrpoly
======

draw a regular polygon



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xrpoly(orig,n,r,[theta])




Arguments
~~~~~~~~~

:orig vector of size 2.
: :n integer, number of sides.
: :r real scalar.
: :theta real, angle in radian; 0 is the default value.
:



Description
~~~~~~~~~~~

`xrpoly` draws a regular polygon with `n` sides contained in the
circle of diameter `r` and with the origin of the circle set at point
`orig`. `theta` specifies a rotation angle in radian. This function
uses the current graphics scales.



Sample
~~~~~~



Examples
~~~~~~~~


::

    `plot2d`_(0,0,-1,"012"," ",[0,0,10,10])
    xrpoly([5,5],5,5)




See Also
~~~~~~~~


+ `xrect`_ draw a rectangle


.. _xrect: xrect.html


