


unglue
======

unglue a coumpound object and replace it by individual children.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    unglue(h)
    H=unglue(h)




Arguments
~~~~~~~~~

:h a handle on an Compound.
: :H a vector of handle on the resulting entities after unCompound.
:



Description
~~~~~~~~~~~

Given a handle on an Compound entity, this function destroies the
Compound and unpacks the elementary entities to associated them to its
parent. `glue` returns a vector of handles on these individual
children.



See Also
~~~~~~~~


+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `copy`_ copy a graphics entity.
+ `glue`_ glue a set of graphics entities into an Compound.
+ `graphics_entities`_ description of the graphics entities data
  structures


.. _set: set.html
.. _graphics_entities: graphics_entities.html
.. _get: get.html
.. _glue: glue.html
.. _copy: copy.html


