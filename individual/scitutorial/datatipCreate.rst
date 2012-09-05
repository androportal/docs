


datatipCreate
=============

Create a data tip on a polyline by program



Calling Sequence
~~~~~~~~~~~~~~~~


::

    datatip_handle = datatipCreate(polyline_handle,index)
    datatip_handle = datatipCreate(polyline_handle,pt)




Arguments
~~~~~~~~~

:polyline_handle A handle on a polyline
: :index The index of a polyline data point where to draw the data
  tip.
: :pt A vector with 2 elements, the coordinates of the point where to
  draw the data tip.
: :datatip_handle The handle on the newly created entity
:



Description
~~~~~~~~~~~

This function can be used to create data tips on a polyline by
program. Called with an index as second argument, it sets the tip at
the coordinates given by polyline point specified by the index. Called
with a point as second argument it sets the tip at the coordinates
corresponding to the orthogonal projection of the point on the
polyline if the interpolation mode is on or to the nearest mesh point.



Examples
~~~~~~~~


::

    x=`linspace`_(0,1,9)';
    y=x.^3;
    `clf`_();
    `plot`_(x,y);
    e=`gce`_();p=e.children(1);//get the handle on the polyline
    p.mark_mode="on";p.mark_style=2;p.mark_size=12;
    t=datatipCreate(p,3);
    
    datatipCreate(p,[0.6,0.2]);
    `datatipSetInterp`_(p,%t);
    datatipCreate(p,[0.82,0.62]);






See Also
~~~~~~~~


+ `datatipInitStruct`_ Initialize the datatip structure associated
  with the given polyline.
+ `datatips`_ Tool for placing and editing tips along the plotted
  curves.
+ `datatipMove`_ Move a specified datatip using the mouse.


.. _datatipInitStruct: datatipInitStruct.html
.. _datatips: datatips.html
.. _datatipMove: datatipMove.html


