


gcf
===

Return handle of current graphic window.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    h = gcf()




Arguments
~~~~~~~~~

:h handle.
:



Description
~~~~~~~~~~~

This routine returns the handle of the current graphic window.



Examples
~~~~~~~~


::

    f=gcf(); // Create a figure
    f.figure_size= [610,469]/2;
    f.figure_name= "Foo";
    
    f=`figure`_(); // Create a figure
    h=`uicontrol`_(f,"style","listbox","position", [10 10 150 160]); // Create a listbox
    `set`_(h, "string", "item 1|item 2|item3");// fill the list
    `set`_(h, "value", [1 3]); // select item 1 and 3 in the list
    gcf()
    
    `scf`_(0); // Make graphic window 0 the current figure
    gcf()  // Return the graphic handle of the current figure
    
    `figure`_(f) // Make window f the current figure
    gcf() // Return the graphic handle of the current figure




See Also
~~~~~~~~


+ `gdf`_ Return handle of default figure.
+ `gca`_ Return handle of current axes.
+ `gce`_ Get current entity handle.
+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `scf`_ set the current graphic figure (window)
+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `graphics_entities`_ description of the graphics entities data
  structures
+ `uicontrol`_ create a Graphic User Interface object


.. _uicontrol: uicontrol.html
.. _set: set.html
.. _graphics_entities: graphics_entities.html
.. _gce: gce.html
.. _get: get.html
.. _gdf: gdf.html
.. _scf: scf.html
.. _gca: gca.html


