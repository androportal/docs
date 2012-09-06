****


getlinestyle
============

dialog to select linestyle. **Obsolete function.**



Calling Sequence
~~~~~~~~~~~~~~~~


::

    k=getlinestyle()




Arguments
~~~~~~~~~

:k integer, selected linestyle or [] if the "Cancel" button has been
  clicked.
:



Description
~~~~~~~~~~~

This function designed to work with the `xset`_ function **is also
obsolete** .Use the property editor `ged`_ instead.

`getlinestyle` opens a graphic window to select a line style.



Examples
~~~~~~~~


::

    x=0:0.1:10;
    `plot2d`_(x,`sin`_(x))
    e=`gce`_(); // store the Compound containing the plot
    e.children(1).line_style = getlinestyle();




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


