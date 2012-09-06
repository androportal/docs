


datatipRedraw
=============

Redraw all datatips after a 3D rotation to adjust their positions



Calling Sequence
~~~~~~~~~~~~~~~~


::

    datatipRedraw()
    datatipRedraw(axes_handle)
    datatipRedraw(curve_handles)




Arguments
~~~~~~~~~

:axes_handle The handle on an axes entity.
: :curve_handles An array of handle on entities supporting the
  datatips
:



Description
~~~~~~~~~~~

Due to graphic system limitations it is not possible to adjust the
datatip textbox positions during a rotation. Calling this function
recomputes the positions for a clean rendering.



Examples
~~~~~~~~


::

    `clf`_();`param3d`_()
    p=`gce`_();//get the handle on the polyline
    `datatipCreate`_(p,30);
    `datatipCreate`_(p,100);
    `datatipCreate`_(p,50);
    ax=`gca`_();ax.rotation_angles=[35 45];// first plot below
    datatipRedraw() //second plot below






See Also
~~~~~~~~


+ `datatips`_ Tool for placing and editing tips along the plotted
  curves.


.. _datatips: datatips.html


