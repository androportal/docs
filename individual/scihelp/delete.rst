


delete
======

delete a graphic entity and its children.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    delete(h)
    delete(h,"callback")
    delete()
    delete("all")




Arguments
~~~~~~~~~

:h a handle, the handle of the entity to delete. `h` can be a vector
  of handles, in which case all objects identified by h(i) will be
  deleted.
: :"all" string keyword (optional).
:



Description
~~~~~~~~~~~

This routine can be used to delete a graphics entity identified by the
handle given as argument. In this case, All children of this graphics
entity will be deleted. Without any argument `delete` removes the
current entity. With `"all"` argument it deletes all the entities of
the current figure.

The `"callback"` argument is not yet handled.



Examples
~~~~~~~~


::

    `subplot`_(211);
    t=1:10;`plot2d`_(t,t.^2),
    `subplot`_(223);
    `plot3d`_();
    `subplot`_(224);
    `plot2d`_();
    `xfrect`_(1,0,3,1);
    a=`get`_("current_axes") 
    delete(); //delete the graphics object newly created
    delete(a.children); //delete all children of the current axes
    delete(a); //delete the axes
    delete("all"); //delete all the graphics objects of the figure




See Also
~~~~~~~~


+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `copy`_ copy a graphics entity.
+ `move`_ move, translate, a graphic entity and its children.
+ `is_handle_valid`_ Check wether a set of graphic handles is still
  valid.
+ `graphics_entities`_ description of the graphics entities data
  structures
+ `xdel`_ delete a graphics window
+ `close`_ close a figure


.. _set: set.html
.. _graphics_entities: graphics_entities.html
.. _get: get.html
.. _copy: copy.html
.. _xdel: xdel.html
.. _is_handle_valid: is_handle_valid.html
.. _close: close.html
.. _move: move.html


