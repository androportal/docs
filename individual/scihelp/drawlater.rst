


drawlater
=========

makes axes children invisible.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    drawlater()




Description
~~~~~~~~~~~

This function can be used not to display immediatly onto the `current
figure` the next created graphics objects - i.e. by calling high level
functions such as plotting functions or setting properties to existant
objects. The `immediate_drawing` property of the current figure is set
to `'off'` in order to postpon the next drawings.

It can specially be used with the `drawnow` function.

To enable back the `immediate_drawing` for the current figure, you can
use `drawnow` function.

Warning : note that between drawlater and drawnow calls, the current
figure may have changed. Therefore, this must be used carefully.



Examples
~~~~~~~~


::

    //Example :  one axes / one figure
    drawlater(); 
    `xfarc`_(.25,.55,.1,.15,0,64*360);
    `xfarc`_(.55,.55,.1,.15,0,64*360);
    `xfrect`_(.3,.8,.3,.2); 
    `xfrect`_(.2,.7,.5,.2);  
    `xfrect`_(.32,.78,.1,.1);
    `xfrect`_(.44,.78,.14,.1);
    `xfrect`_(-.2,.4,1.5,.8);
    `xstring`_(0.33,.9,"A Scilab Car");    
    a=`get`_("current_axes");
    a.children(1).font_size=4;
    a.children(1).font_style=4;  
    a.children(1).background=5;
    a.children(3).background=8;
    a.children(4).background=8; 
    a.children(5).background=17;
    a.children(6).background=17; 
    a.children(7).background=25;
    a.children(8).background=25;
    `xclick`_();`drawnow`_();
     
    //Example 2:: two axes / one figure
    
    `subplot`_(212)
    a=`gca`_();
    drawlater // what will be present in this axes will be displayed later
    `plot2d`_ // draw these axes and children later...
    
    `subplot`_(211) // Warning: we change the axes
    `plot2d1`_ // default drawing mode
    
    `draw`_(a) // ...axes only is visible providing you not redraw the window
    `drawnow`_() // all is visible




See Also
~~~~~~~~


+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `drawnow`_ draw hidden graphics entities.
+ `graphics_entities`_ description of the graphics entities data
  structures


.. _get: get.html
.. _set: set.html
.. _graphics_entities: graphics_entities.html
.. _drawnow: drawnow.html


