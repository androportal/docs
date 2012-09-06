


gce
===

Get current entity handle.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    e = gce()




Arguments
~~~~~~~~~

:e handle, the handle of the current entity.
:



Description
~~~~~~~~~~~

This routine returns the handle of the last created (and still
existent) entity.



Examples
~~~~~~~~


::

    a=`gca`_() //get the handle of the newly created axes
    a.data_bounds=[1,1;10,10];
    a.axes_visible = 'on' ;
    for i=1:5
      `xfrect`_(7-i,9-i,3,3);
      e=gce();
      e.background=i;
    end
    `delete`_(); // delete current entity
    `delete`_(gce()); // delete current entity
    `delete`_(`gcf`_()); // delete current figure




See Also
~~~~~~~~


+ `gcf`_ Return handle of current graphic window.
+ `gca`_ Return handle of current axes.
+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `graphics_entities`_ description of the graphics entities data
  structures


.. _get: get.html
.. _gca: gca.html
.. _gcf: gcf.html
.. _graphics_entities: graphics_entities.html


