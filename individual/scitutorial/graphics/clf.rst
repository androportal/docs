====
"clf"
====

Scilab Function Last update : 23/07/2004
**clf** - clear or reset the current graphic figure (window) to
default values



Calling Sequence
~~~~~~~~~~~~~~~~

clf(<opt_job_arg>)
clf(h,<opt_job_arg>)
clf(num,<opt_job_arg>)




Parameters
~~~~~~~~~~


+ **h** : a handle, the figure handle
+ **num** : a number, the figure_id
+ **<opt_job_arg>** : a string ( **'clear' ** or **'reset'** )
  specifying the job for **clf** .




Description
~~~~~~~~~~~
The **clf** command is used to reset a figure to its default values
and/or to delete all its children.
If **opt_job_arg** string value is **'clear'** then all children of
the specified figure are deleted.

If **opt_job_arg** string value is **'reset'** then not only all
children of the specified figure are deleted but the figure properties
are reset to their default values using the default figure model (see
` **gdf** `_).

**clf(num)** clear or reset and clear the figure with
**figure_id==num** . Try not to specify an inexistant figure.

**clf(h)** clear or reset and clear the figure pointed to by the
handle **h** . Try not to specify an inexistant figure.

**clf()** clear or reset and clear the current existing figure.



Examples
~~~~~~~~


::

    
       f4=scf(4);  //creates figure with id==4 and make it the current one
       f4.color_map = jetcolormap(64);
       f4.figure_size = [400, 200];
       plot2d()
       clf(f4,'reset')
       f0=scf(0); //creates figure with id==0 and make it the current one
       f0.color_map=hotcolormap(128);
       plot3d1();
       clf() // equivalent to clf(gcf(),'clear')
       plot3d1();  // color_map unchanged
       clf(gcf(),'reset')
       plot3d1();  // color_map changed (back to the default one with 32 colors)
    
      




See Also
~~~~~~~~

` **set** `_,` **get** `_,` **gcf** `_,` **gdf** `_,` **scf** `_,`
**graphics_entities** `_,



Author
~~~~~~

S. Steer & F.Leray INRIA

.. _
      : ://./graphics/graphics_entities.htm
.. _
      : ://./graphics/gcf.htm
.. _
      : ://./graphics/scf.htm
.. _
      : ://./graphics/set.htm
.. _
      : ://./graphics/gdf.htm
.. _
      : ://./graphics/get.htm


