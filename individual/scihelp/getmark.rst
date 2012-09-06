****


getmark
=======

dialog to select mark (symbol). **Obsolete function**



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [mark,mrkSize]=getmark()




Arguments
~~~~~~~~~

:mark integer, the number of the selected mark
: :mrkSize integer, the size of the selected mark
:



Description
~~~~~~~~~~~

This function designed to work with the `xset`_ function **is also
obsolete** .Use the property editor `ged`_ instead.

`getmark` opens a graphic window to select a mark (symbol).



Examples
~~~~~~~~


::

    x=0:0.1:10;
    [mark,mrkSize]=getmark();
    `plot2d`_(x,`sin`_(x),style=-mark);
    `clf`_();
    `plot2d`_(x,`sin`_(x))
    e=`gce`_(); // store the Compound containing the plot
    [mark,mrkSize]=getmark();
    e.children(1).mark_style = mark;




See Also
~~~~~~~~


+ `ged`_ Scilab Graphic Editor
+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `segs_properties`_ description of the Polyline entity properties
+ `segs_properties`_ description of the Segments entity properties


.. _set: set.html
.. _segs_properties: segs_properties.html
.. _ged: ged.html
.. _xset: xset.html
.. _segs_properties: polyline_properties.html


