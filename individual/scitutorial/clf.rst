


clf
===

clear or reset the current graphic figure (window) to default values



Calling Sequence
~~~~~~~~~~~~~~~~


::

    clf(<opt_job_arg>)
    clf(h,<opt_job_arg>)
    clf(num,<opt_job_arg>)




Arguments
~~~~~~~~~

:h a handle, the figure handle
: :num a number, the figure_id
: :<opt_job_arg> a string ( `'clear'`or `'reset'` ) specifying the job
  for `clf`.
:



Description
~~~~~~~~~~~

The `clf` command is used to reset a figure to its default values
and/or to delete all its children.

If `opt_job_arg` string value is `'clear'` then all children of the
specified figure are deleted.

If `opt_job_arg` string value is `'reset'` then not only all children
of the specified figure are deleted but the figure properties are
reset to their default values using the default figure model (see
`gdf`_). The only exception are the `axes_size` and `figure_size`
properties which can not be reset if the figure is docked with other
elements.

`clf(num)` clear or reset the figure with `figure_id==num`.

`clf(h)` clear or reset the figure pointed to by the handle `h`.

`clf()` clear or reset the current figure.

`clf` function delete every children of specified windows including
menus and uicontrols added by user. To prevent menus and uicontrols
from being deleted, the `delete(gca())` command might be used instead.



Examples
~~~~~~~~


::

    f4=`scf`_(4);  //creates figure with id==4 and make it the current one
    f4.color_map = `jetcolormap`_(64);
    f4.figure_size = [400, 200];
    `plot2d`_()
    clf(f4,'reset')
       
    f0=`scf`_(0); //creates figure with id==0 and make it the current one
    f0.color_map=`hotcolormap`_(128); // change color map
    t=-%pi:0.3:%pi;
    `plot3d1`_(t,t,`sin`_(t)'*`cos`_(t));
    
    clf() // equivalent to clf(gcf(),'clear')
    `plot3d1`_(t,t,`sin`_(t)'*`cos`_(t));  // color_map unchanged
       
    clf(`gcf`_(),'reset')
    `plot3d1`_(t,t,`sin`_(t)'*`cos`_(t));  // color_map changed (back to the default one with 32 colors)




See Also
~~~~~~~~


+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `gcf`_ Return handle of current graphic window.
+ `gdf`_ Return handle of default figure.
+ `scf`_ set the current graphic figure (window)
+ `graphics_entities`_ description of the graphics entities data
  structures


.. _set: set.html
.. _graphics_entities: graphics_entities.html
.. _get: get.html
.. _gdf: gdf.html
.. _scf: scf.html
.. _gcf: gcf.html


