


is_handle_valid
===============

Check wether a set of graphic handles is still valid.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    isValid = is_handle_valid(h)




Arguments
~~~~~~~~~

:h Matrix of graphic handles
: :isValid Matrix of boolean with the same size as `h`
:



Description
~~~~~~~~~~~

`is_handle_valid` function tests wether a set of graphic handle is
still valid. A valid handle is a handle which has not been deleted.
The result, `isValid`, is a boolean matrix such as `isValid(i,j)` is
true if `h(i,j)` is valid and false otherwise.



Examples
~~~~~~~~


::

    // check that current objects are valid
    is_handle_valid([`gcf`_(), `gca`_(), `gce`_()])
    
    // create 11 polylines
    `plot`_([0:10; 0:10; 0:10], [0:10; 0:0.5:5; 0:2:20]);
        
    // check polylines validity
    axes = `gca`_();
    polylines = axes.children(1).children
    is_handle_valid(polylines)
        
    // delete some polylines
    `delete`_(polylines(3:7));
    // print validity
    is_handle_valid(polylines)




See Also
~~~~~~~~


+ `delete`_ delete a graphic entity and its children.
+ `graphics_entities`_ description of the graphics entities data
  structures


.. _delete: delete.html
.. _graphics_entities: graphics_entities.html


