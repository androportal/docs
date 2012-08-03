====
"gce"
====

Scilab Function Last update : 21/12/2005
**gce** - Get current entity handle.



Calling Sequence
~~~~~~~~~~~~~~~~

e = gce()




Parameters
~~~~~~~~~~


+ **e** : handle, the handle of the current entity.




Description
~~~~~~~~~~~

This routine returns the handle of the last created (and still
existent) entity.



Examples
~~~~~~~~


::

    
       
        set("figure_style","new") //create a figure entity
        a=gca() //get the handle of the newly created axes
        a.data_bounds=[1,1;10,10];
        a.axes_visible = 'on' ;
        for i=1:5
          xfrect(7-i,9-i,3,3);
          e=gce();
          e.background=i;
         end
        delete(); // delete current entity
        delete(gce()); // delete current entity
        delete(gcf()); // delete current figure
         
    
      




See Also
~~~~~~~~

` **gcf** `_,` **gca** `_,` **get** `_,` **graphics_entities** `_,



Author
~~~~~~

Djalel ABDEMOUCHE

.. _
      : ://./graphics/gcf.htm
.. _
      : ://./graphics/gca.htm
.. _
      : ://./graphics/get.htm
.. _
      : ://./graphics/graphics_entities.htm


