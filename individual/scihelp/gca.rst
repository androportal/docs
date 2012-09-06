


gca
===

Return handle of current axes.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    a = gca()




Arguments
~~~~~~~~~

:a handle, the handle of the current axes entity.
:



Description
~~~~~~~~~~~

This routine returns the handle of the current axes for the current
figure.



Examples
~~~~~~~~


::

    `subplot`_(211)
    a=gca() //get the current axes
    a.box="off";
    t=-%pi:0.3:%pi;`plot3d`_(t,t,`sin`_(t)'*`cos`_(t),80,50,'X@Y@Z',[5,2,4]);
    `subplot`_(212)
    `plot2d`_(); //simple plot
    a=gca() //get the current axes
    a.box="off";
    a.x_location="middle";
    a.parent.background=4;
    `delete`_(gca()) // delete the current axes    
    `xdel`_(0) //delete a graphics window




See Also
~~~~~~~~


+ `gda`_ Return handle of default axes.
+ `gcf`_ Return handle of current graphic window.
+ `gce`_ Get current entity handle.
+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `graphics_entities`_ description of the graphics entities data
  structures


.. _gcf: gcf.html
.. _graphics_entities: graphics_entities.html
.. _gce: gce.html
.. _get: get.html
.. _gda: gda.html


