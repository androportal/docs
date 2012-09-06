


get_figure_handle
=================

get a figure handle from its id



Calling Sequence
~~~~~~~~~~~~~~~~


::

    f = get_figure_handle(figure_id)




Arguments
~~~~~~~~~

:figure_id Integer, id of the figure to retrieve.
: :f Handle of the corresponding figure.
:



Description
~~~~~~~~~~~

`get_figure_handle` function allows to retrieve the handle of a
graphic figure knowing its id. If a figure with the specified id
exists the function returns it. Otherwise is returns an empty matrix.



Examples
~~~~~~~~


::

    // create some figures
    `scf`_(0);
    `scf`_(5);
    `scf`_(12);
    
    // get handle on the figure with id 5
    f5 = get_figure_handle(5);
    // current figure remains the one with id 12
    `gcf`_()
    // get a non existing figure
    f42 = get_figure_handle(42);




See Also
~~~~~~~~


+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `gcf`_ Return handle of current graphic window.
+ `scf`_ set the current graphic figure (window)
+ `graphics_entities`_ description of the graphics entities data
  structures


.. _set: set.html
.. _graphics_entities: graphics_entities.html
.. _get: get.html
.. _scf: scf.html
.. _gcf: gcf.html


