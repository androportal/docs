


glue
====

glue a set of graphics entities into an Compound.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    glue(H)
    h_agreg=glue(H)




Arguments
~~~~~~~~~

:H a vector of handle.
: :h_agreg a handle, the handle on the Compound entity.
:



Description
~~~~~~~~~~~

Given a vector of handles, this function glue the corresponding
entities in a single Compound and returns the handle on this new
entity.



Examples
~~~~~~~~


::

    `scf`_(1);
    `plot2d`_(0,0,-1,"010"," ",[-2,-2,2,2]);
    `xrect`_(-1,1,2,2);
    `xarc`_(-0.5,0.5,2,2,0,360*64);
    a=`gca`_();
    r=a.children(1);
    c=a.children(2);
    nc=glue([r,c]);
    // a.children(1) and nc now both correspond to the
    // newly created compound object,
    a.children(1)
    // which is then translated.
    `move`_(nc,[-1,-0.5]);




See Also
~~~~~~~~


+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `move`_ move, translate, a graphic entity and its children.
+ `unglue`_ unglue a coumpound object and replace it by individual
  children.
+ `graphics_entities`_ description of the graphics entities data
  structures


.. _set: set.html
.. _graphics_entities: graphics_entities.html
.. _get: get.html
.. _unglue: unglue.html
.. _move: move.html


