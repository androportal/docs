


swap_handles
============

Permute two handles in the graphic Hierarchy.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    swap_handle( handle1, handle2 )




Arguments
~~~~~~~~~

:handle1 first handle of the permutation.
: :handle2 second handle of the permutation.
:



Description
~~~~~~~~~~~

The **swap_handles** function allows to permute two handles in the
graphic hierarchy. The first handle will take the second handle
position and vice versa.

Since not every handles are compatible with each others, some
restrictions exist when swapping handles. For examples, it is not
allowed to swap a polyline with an axes handle, since their would not
be compatible with their new parents.. More information about
compatibility can be found in the `graphics_entities`_ page.

This routine may be used on children of the same parent to change
their indices..



Examples
~~~~~~~~


::

    //-----------------//
    //  First example  //
    //-----------------//
    
    // create a rectangle
    `xrect`_( 0.5, 0.5,0.5,0.5) ;
    rect = `gce`_() ;
    
    // create a circle
    `xarc`_( 0.5, 0.5, 0.5, 0.5, 0, 64 * 360 ) ;
    circle = `gce`_() ;
    
    // create an arrow
    `xpoly`_([0,1],[0,1]) ;
    arrow = `gce`_() ;
    arrow.polyline_style = 4 ;
    arrow.arrow_size_factor = 4 ;
    
    // get the list of children
    axes = `gca`_()  ;
    axes.children
    
    // change the order
    swap_handles( rect, arrow ) ;
    swap_handles( arrow, circle ) ;
    
    // get the new order
    axes.children
    
    //-----------------//
    //  Second example //
    //-----------------//
    
    // create two windows
    `plot2d`_ ;
    axes1 = `gca`_() ;
    
    `scf`_() ;
    `fec`_ ;
    axes2 = `gca`_() ;
    
    // swap their axes
    // note that the color map does not change.
    swap_handles( axes1, axes2 ) ;




See Also
~~~~~~~~


+ `graphics_entities`_ description of the graphics entities data
  structures
+ `copy`_ copy a graphics entity.
+ `delete`_ delete a graphic entity and its children.
+ `relocate_handle`_ Move handles inside the graphic hierarchy.


.. _relocate_handle: relocate_handle.html
.. _copy: copy.html
.. _graphics_entities: graphics_entities.html
.. _delete: delete.html


