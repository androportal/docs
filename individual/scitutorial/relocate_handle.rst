


relocate_handle
===============

Move handles inside the graphic hierarchy.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    relocate_handle( movedHandles, parent )




Arguments
~~~~~~~~~

:movedHandles Vector of relocated handles.
: :parent New parent of the handles.
:



Description
~~~~~~~~~~~

The relocate_handle function allows to move handles from their current
locations in the graphical hierarchy to another. All the moved
entities are relocated under the same parent handle specified with the
**parent** parameter.

Since not every handles are compatible with each others, some
restrictions exist when relocationg handles. For examples, it is not
allowed to move an axes handle under a polyline. More information
about compatibility can be found in the `graphics_entities`_ page.

This routine is particularly useful to move an object from an axes
entity to an other or to move axes from figures handles.



Examples
~~~~~~~~


::

    x = 0:10 ;
    
    // plot a first polyline
    `plot`_(x,x^2) ;
    axes1 = `gca`_() ;
    poly1 = `gce`_() ;
    
    // plot a second in an other window
    `scf`_() ;
    `plot`_( x,x )  ;
    axes2 = `gca`_() ;
    poly2 = `gce`_()  ;
    poly2bis = `copy`_( poly2 ) ; // make a copy of the polyline
    
    // put both polyline in the same window
    relocate_handle( poly2bis, axes1 ) ;




See Also
~~~~~~~~


+ `graphics_entities`_ description of the graphics entities data
  structures
+ `copy`_ copy a graphics entity.
+ `delete`_ delete a graphic entity and its children.
+ `swap_handles`_ Permute two handles in the graphic Hierarchy.


.. _swap_handles: swap_handles.html
.. _copy: copy.html
.. _graphics_entities: graphics_entities.html
.. _delete: delete.html


