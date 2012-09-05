


set
===

set a property value of a graphic entity object or of a User Interface
object.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    set(prop,val)
    set(h,prop)
    set(h,prop,val)
    h.prop=val




Arguments
~~~~~~~~~

:h graphic handle of the entity which to set the named property. `h`
  can be a vector of handles, in which case set modifies the property
  for all entities contained in h.
: :prop character string, name of the property to set.
: :val value to give to the property.
:



Description
~~~~~~~~~~~

This routine can be used to modify the value of a specified property
from a graphics entity or a GUI object. In this case it is equivalent
to use the dot operator on a handle. For exemple,
`set(h,"background",5)` is equivalent to `h.background = 5`.

Property names are character strings. The type of the set values
depends on the handle type and property.

To get the list of all existing properties see `graphics_entities`_ or
`uicontrol`_ for User Interface objects.

`set` function can be also called with only a property and a value as
argument. In this case, the property must be one of the following:

:current_entity or hdl `set('current_entity',h)` or `set('hdl',h)`
  sets a new entity as current. In this case, the value must be a
  graphic handle.
: :current_figure `set('current_figure',fig)` sets a new graphic
  figure as current. It is equivalent to `scf`_. In this case, the value
  must be a Figure handle.
: :current_axes `set('current_axes',axes)` sets a new axes entity as
  current. It is equivalent to `sca`_. In this case, the value must be
  an Axes handle.
:

`set` can also be called with a graphic handle and property as
arguments. The handle must be either a handle on the default figure or
the default axes entities. The property must be `"default_values"`. In
this case, the default entity is reset to the value it had at Scilab
startup. `set("default_values",h)` is equivalent to `sda`_ or `sdf`_.



Examples
~~~~~~~~


::

    `clf`_()
    set("auto_clear","off") ;
    // Exemple of a Plot 2D
    x=[-.2:0.1:2*%pi]';
    `plot2d`_(x-.3,[`sin`_(x-1) `cos`_(2*x)],[1 2] );
    a=`get`_("current_axes");
    p1=a.children.children(1);
    p2=a.children.children(2);
    // set the named properties to the specified values on the objects
    set(p2,"foreground",13);
    set(p2,"polyline_style",2);
    set(a,'tight_limits',"on");
    set(a,"box","off");
    set(a,"sub_tics",[ 7 0 ]);
    set(a,"y_location","middle")
    set(p2,'thickness',2);
    set(p1,'mark_mode',"on");
    set(p1,'mark_style',3);
    `plot2d`_(x-2,x.^2/20);
    p3= a.children(1).children;
    set([a p1 p2 p3],"foreground",5)




See Also
~~~~~~~~


+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `delete`_ delete a graphic entity and its children.
+ `copy`_ copy a graphics entity.
+ `move`_ move, translate, a graphic entity and its children.
+ `graphics_entities`_ description of the graphics entities data
  structures
+ `uicontrol`_ create a Graphic User Interface object


.. _uicontrol: uicontrol.html
.. _graphics_entities: graphics_entities.html
.. _get: get.html
.. _sdf: sdf.html
.. _delete: delete.html
.. _move: move.html
.. _sca: sca.html
.. _scf: scf.html
.. _copy: copy.html
.. _sda: sda.html


