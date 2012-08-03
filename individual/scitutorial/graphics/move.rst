====
"move"
====

Scilab Function Last update : 2002
**move** - move, translate, a graphic entity and its children.



Calling Sequence
~~~~~~~~~~~~~~~~

move(h,xy)
move(h,xy,"alone")




Parameters
~~~~~~~~~~


+ **h** : a handle, the handle of the entity to move.
+ **xy** : an array **[dx,dy]** which gives the translation vector to
  apply.
+ **"alone" ** : string keyword (optional).




Description
~~~~~~~~~~~

This routine can be used to apply a translation to a graphics entity.
If the entity has children, they will be also translated.

Given the keyword **"alone"** , only the specified entity needs to be
redraw. It must specially be used with the **pixel_drawing_mode**
property of the figure entity (see draw objects under **"xor"**
drawing mode).



Examples
~~~~~~~~


::

    
     




See Also
~~~~~~~~

` **get** `_,` **set** `_,` **draw** `_,` **figure_properties** `_,`
**graphics_entities** `_,



Author
~~~~~~

Djalel ABDEMOUCHE

.. _
      : ://./graphics/graphics_entities.htm
.. _
      : ://./graphics/set.htm
.. _
      : ://./graphics/figure_properties.htm
.. _
      : ://./graphics/draw.htm
.. _
      : ://./graphics/get.htm


