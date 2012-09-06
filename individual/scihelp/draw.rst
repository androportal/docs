****


draw
====

draw an entity. **This function is obsolete.**



Calling Sequence
~~~~~~~~~~~~~~~~


::

    draw()
    draw(h)




Arguments
~~~~~~~~~

:h a handle, the handle on an entity to draw. `h` can be a vector of
  handles, in which case all objects identified by h(i) will be drawn.
:



Description
~~~~~~~~~~~

This function can be used to draw entities specified by `h` even if
its parent figure `immediate_drawing` property is `"off"`. If no
argument is specified, the `current object` is drawn. Note that the
window must not be resized ; if not, those objects are hidden back.

WARNING: This function is obsolete from Scilab 5.4.0 and is going to
be removed with Scilab 5.4.1.



Examples
~~~~~~~~

Those two exemples below behave the same way hiding and showing
objects.



::

    `subplot`_(212)
    a=`gca`_();
    `plot2d`_
    `drawlater`_
    
    `subplot`_(211)
    `plot2d1`_ // default drawing mode
    
    e=`gce`_();
    draw(e.children(2)) // draw a single polyline of the second axes
    
    e.children(1).visible='off'; // We can choose to make a line invisible
    
    draw(e) // draw Compound and its children <=> draw all the visible polylines
    
    `drawnow`_ // ...now!
    
    e.children(1).visible='on';





::

    `subplot`_(212)
    a=`gca`_();
    `plot2d`_();
    `drawlater`_();
    
    `subplot`_(211);
    `plot2d1`_(); // default drawing mode
    
    e=`gce`_();
    a = `gca`_();
    a.axes_visible = "off";
    e.children(:).visible = "off";
    `drawnow`_();
    
    e.children(2).visible = "on"; // draw a single polyline of the second axes
    
    e.children(1).visible='off'; // We can choose to make a line invisible
    
    e.children(3).visible = "on"; // Make other components visible again
    
    a.axes_visible = "on";
    
    e.children(1).visible='on'; // Make last polyline visible





See Also
~~~~~~~~


+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `drawnow`_ draw hidden graphics entities.
+ `drawlater`_ makes axes children invisible.
+ `graphics_entities`_ description of the graphics entities data
  structures




History
~~~~~~~
Version Description 5.4.0 Function draw is obsolete.
.. _set: set.html
.. _graphics_entities: graphics_entities.html
.. _get: get.html
.. _drawlater: drawlater.html
.. _drawnow: drawnow.html


