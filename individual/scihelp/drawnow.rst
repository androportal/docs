


drawnow
=======

draw hidden graphics entities.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    drawnow()




Description
~~~~~~~~~~~

Considering the current figure, this function can be used to draw the
hidden graphics entities and all its chidren, that may have been
postponed by a previous call to `drawlater`. The `immediate_drawing`
property of the `current figure` is set to `"on"`.

It can specially be used with the `drawlater` function.



Examples
~~~~~~~~


::

    f=`get`_("current_figure") // handle of the current figure
      
    `drawlater`_()
    `subplot`_(221);
    t=1:10;`plot2d`_(t,t.^2)
    `subplot`_(222);
    x=0:1:7;`plot2d`_(x,`cos`_(x),2) 
    `subplot`_(234);
    `plot2d`_(t,`cos`_(t),3);
    `subplot`_(235);
    `plot2d`_(x,`sin`_(2*x),5); 
    `subplot`_(236);
    `plot2d`_(t,`tan`_(2*t));  
     
    `draw`_(`gca`_()); //draw the current axes and its children
    `draw`_(f.children([3 4])); // draw the specified axes and their children
    drawnow(); // draw the current figure




See Also
~~~~~~~~


+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `drawlater`_ makes axes children invisible.
+ `graphics_entities`_ description of the graphics entities data
  structures


.. _get: get.html
.. _set: set.html
.. _graphics_entities: graphics_entities.html
.. _drawlater: drawlater.html


