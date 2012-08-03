====
"set"
====

Scilab Function Last update : 28/06/2004
**set** - set a property value of a graphic entity object or of a User
Interface object.



Calling Sequence
~~~~~~~~~~~~~~~~

set(prop,val)
set(h,prop,val)
h.prop=val
set(n,prop,val)




Parameters
~~~~~~~~~~


+ **h** : a handle, the handle of the entity which to set the named
  property, **h** can be a vector of handles, in which case set sets the
  property's value for all objects identified by h(i).
+ **n** n : an integer, the handle of User Interface object which to
  set the named property.
+ **prop** : character string name of the property to set.
+ **val** : value to give to the property (see ` **graphics_entities**
  `_).




Description
~~~~~~~~~~~

This routine can be used to set a graphics entity specified property.
This graphics entity is identified by its handle **h** .If the handle
is not specified, the current object is taken as the default handle.
The type of the value to set property depends on the type of the
graphics entity.

See ` **graphics_entities** `_ for details about properties' names and
values for graphics entities.

See ` **uicontrol** `_ for details about properties' names and values
for User Interface objects.

For graphics entities handle it is possible to use equivalently a dot
notation like **h.background** instead of **set** .



Examples
~~~~~~~~


::

    
    
    
       clf()
       set("figure_style","new") //create a figure
       set("auto_clear","off") ;
       // Exemple of a Plot 2D
       x=[-.2:0.1:2*%pi]';
       plot2d(x-.3,[sin(x-1) cos(2*x)],[1 2] );
       a=get("current_axes");
       p1=a.children.children(1);
       p2=a.children.children(2);
       // set the named properties to the specified values on the objects
       set(p2,"foreground",13);
       set(p2,"polyline_style",2);
       set(a,'tight_limits',"on");
       set(a,"box","off");
       set(a,"sub_tics",[ 7 0 ]);
       set(a,"y_location","middle")
       set(p2,'thickness',2);
       set(p1,'mark_mode',"on");
       set(p1,'mark_style',3);
       plot2d(x-2,x.^2/20);
       p3= a.children(1).children;
       set([a p1 p2 p3],"foreground",5)
    
     
      




See Also
~~~~~~~~

` **get** `_,` **delete** `_,` **copy** `_,` **move** `_,`
**graphics_entities** `_,` **uicontrol** `_,



Author
~~~~~~

Djalel ABDEMOUCHE

.. _
      : ://./graphics/graphics_entities.htm
.. _
      : ://./graphics/copy.htm
.. _
      : ://./graphics/move.htm
.. _
      : ://./graphics/../tksci/uicontrol.htm
.. _
      : ://./graphics/delete.htm
.. _
      : ://./graphics/get.htm


