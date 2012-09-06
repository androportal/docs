


scf
===

set the current graphic figure (window)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    f = scf()
    f = scf(h)
    f = scf(num)




Arguments
~~~~~~~~~

:h a handle, the figure handle
: :num a number, the figure_id
: :f the handle of the current figure
:



Description
~~~~~~~~~~~

The current figure is the destination of the graphic drawing. The
`scf` function allows to change this current figure or to create it if
it does not already exist.



`scf(num)` set the figure with `figure_id==num` as the current figure.
If it does not already exist it is created.



`scf(h)` set the figure pointed to by the handle `h` as the current
figure. If it does not already exist it is created.

`scf()` is equivalent to `scf(max(winsid())+1)`. It may be used to
create a new graphic window.



Examples
~~~~~~~~


::

    f4=scf(4); //creates figure with id==4 and make it the current one
    f0=scf(0); //creates figure with id==0 and make it the current one
    `plot2d`_() //draw in current figure (id=0)
    scf(f4); // set first created figure as current one
    `plot3d`_() //draw in current figure (id=4)




See Also
~~~~~~~~


+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `gcf`_ Return handle of current graphic window.
+ `clf`_ clear or reset the current graphic figure (window) to default
  values
+ `get_figure_handle`_ get a figure handle from its id
+ `graphics_entities`_ description of the graphics entities data
  structures


.. _set: set.html
.. _graphics_entities: graphics_entities.html
.. _get: get.html
.. _get_figure_handle: get_figure_handle.html
.. _clf: clf.html
.. _gcf: gcf.html


