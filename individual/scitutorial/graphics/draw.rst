====
"draw"
====

Scilab Function Last update : 10/10/2005
**draw** - draw an entity.



Calling Sequence
~~~~~~~~~~~~~~~~

draw()
draw(h)




Parameters
~~~~~~~~~~


+ **h** : a handle, the handle on an entity to draw. **h** can be a
  vector of handles, in which case all objects identified by h(i) will
  be drawn.




Description
~~~~~~~~~~~

This function can be used to draw entities specified by **h** even if
its parent figure **immediate_drawing** property is **"off"** . If no
argument is specified, the **current object** is drawn. Note that the
window must not be resized ; if not, those objects are hidden back.



Examples
~~~~~~~~


::

       subplot(212)
       a=gca();
        plot2d
       drawlater
    
        subplot(211)
        plot2d1 // default drawing mode
    
        e=gce();
        draw(e.children(2)) // draw a single polyline of the second axes
    
        e.children(1).visible='off'; // We can choose to make a line invisible
    
        draw(e) // draw Compound and its children <=> draw all the visible polylines
        
        
      
    
        drawnow // ...now!
    
        e.children(1).visible='on';
    
    
    
     
      




See Also
~~~~~~~~

` **get** `_,` **set** `_,` **drawnow** `_,` **drawlater** `_,`
**graphics_entities** `_,



Author
~~~~~~

Djalel ABDEMOUCHE, F.Leray

.. _
      : ://./graphics/graphics_entities.htm
.. _
      : ://./graphics/set.htm
.. _
      : ://./graphics/drawlater.htm
.. _
      : ://./graphics/get.htm
.. _
      : ://./graphics/drawnow.htm


