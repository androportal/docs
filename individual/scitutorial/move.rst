


move
====

move, translate, a graphic entity and its children.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    move(h,t)
    move(h,t,"alone")




Arguments
~~~~~~~~~

:h a handle, the handle of the entity to move.
: :t an array, either `[dx,dy]` or [dx,dy,dz], which gives the
  translation vector to apply.
: :"alone" string keyword (optional).
:



Description
~~~~~~~~~~~

This routine can be used to apply a translation to a graphics entity.
If the entity has children, they will be also translated.

Given the keyword `"alone"`, only the specified entity needs to be
redrawn. It must specially be used with the `pixel_drawing_mode`
property of the figure entity (see draw objects under `"xor"` drawing
mode).



Sample
~~~~~~



Examples
~~~~~~~~


::

    `plot3d`_();
    a=`gca`_();
    p=a.children(1);
    t=[1,0,-1.25];
    move(p,t);




See Also
~~~~~~~~


+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `draw`_ draw an entity. This function is obsolete.
+ `figure_properties`_ description of the graphics figure entity
  properties
+ `graphics_entities`_ description of the graphics entities data
  structures


.. _set: set.html
.. _graphics_entities: graphics_entities.html
.. _get: get.html
.. _draw: draw.html
.. _figure_properties: figure_properties.html


