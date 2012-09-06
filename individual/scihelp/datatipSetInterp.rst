


datatipSetInterp
================

Set the interpolation mode for tip location.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    datatipSetInterp(curve_handle,interp_mode)




Arguments
~~~~~~~~~

:curve_handle A handle on a polyline.
:

:interp_mode A boolean, if false the tips can only be located at the
  mesh points, if true interpolation is made between mesh points. The
  default value is false.
:



Description
~~~~~~~~~~~

Set the interpolation mode for tip location.



Examples
~~~~~~~~


::

    x=`linspace`_(0,1,8)';
    y=x.^3;
    `clf`_()
    `plot`_(x,y);
    e=`gce`_();p=e.children(1);//get the handle on the polyline
    p.mark_mode="on";p.mark_style=2;p.mark_size=5;
    `datatipCreate`_(p,[0.8,0.512]);
    datatipSetInterp(p,%t);
    `datatipCreate`_(p,[0.8,0.512]);




See Also
~~~~~~~~


+ `datatips`_ Tool for placing and editing tips along the plotted
  curves.
+ `datatipMove`_ Move a specified datatip using the mouse.


.. _datatipMove: datatipMove.html
.. _datatips: datatips.html


