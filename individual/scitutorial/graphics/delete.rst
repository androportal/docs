====
"delete"
====

Scilab Function Last update : 2002
**delete** - delete a graphic entity and its children.



Calling Sequence
~~~~~~~~~~~~~~~~

delete(h)
delete(h,"callback")
delete()
delete("all")




Parameters
~~~~~~~~~~


+ **h** : a handle, the handle of the entity to delete. **h** can be a
  vector of handles, in which case all objects identified by h(i) will
  be deleted.
+ **"all" ** : string keyword (optional).




Description
~~~~~~~~~~~

This routine can be used to delete a graphics entity identified by the
handle given as argument. In this case, All children of this graphics
entity will be deleted. Without any argument **delete** removes the
current entity. With **"all"** argument it deletes all the entities of
the current figure.

The **"callback"** argument is not yet handled.



Examples
~~~~~~~~


::

    
    
    
      set("figure_style","new") // select entity based graphics  
      subplot(211);
      t=1:10;plot2d(t,t.^2),
      subplot(223);
      plot3d();
      subplot(224);
      plot2d();
      xfrect(1,0,3,1);
      a=get("current_axes") 
      delete(); //delete the graphics object newly created
      delete(a.children); //delete all children of the current axes
      delete(a); //delete the axes
      delete("all"); //delete all the graphics objects of the figure
    
     
      




See Also
~~~~~~~~

` **get** `_,` **set** `_,` **copy** `_,` **move** `_,`
**graphics_entities** `_,



Author
~~~~~~

Djalel ABDEMOUCHE

.. _
      : ://./graphics/graphics_entities.htm
.. _
      : ://./graphics/set.htm
.. _
      : ://./graphics/move.htm
.. _
      : ://./graphics/get.htm
.. _
      : ://./graphics/copy.htm


