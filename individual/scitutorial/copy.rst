


copy
====

copy a graphics entity.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    copy(h)
    copy(h,h_axes)
    h_copy=copy(h)




Arguments
~~~~~~~~~

:h a handle, the handle of the entity to copy.
: :h_axes a handle, the handle of the parent entity for the
  destination. It should be an axes entity.
: :h_copy a handle, the handle on the entity copied.
:



Description
~~~~~~~~~~~

This routine can be used to make a copy of a graphics entity with all
its propeties'values, it returns the handle on this new entity.
`h_axes` omitted, graphics entity is cloned and it's copied in the
same parent axes entity.



Examples
~~~~~~~~


::

    `subplot`_(211);a1=`gca`_();
    `plot2d`_()
    e=`gce`_();
    p1=e.children(1);
    p2=copy(p1);p2.data(:,2)=p2.data(:,2)-0.5;
    `subplot`_(212);a2=`gca`_();
    a2.data_bounds=a1.data_bounds;
    copy(p1,a2);




See Also
~~~~~~~~


+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `delete`_ delete a graphic entity and its children.
+ `move`_ move, translate, a graphic entity and its children.
+ `graphics_entities`_ description of the graphics entities data
  structures


.. _set: set.html
.. _graphics_entities: graphics_entities.html
.. _get: get.html
.. _delete: delete.html
.. _move: move.html


