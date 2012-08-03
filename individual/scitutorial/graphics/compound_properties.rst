====
"compound_properties"
====

Scilab Data type Last update : 06/12/2005
**Compound_properties** - description of the Compound entity
properties



Description
~~~~~~~~~~~

The Compound entity is a third of the graphics entities hierarchy.
This entity defines interdependencies of the various graphics entities
and their global visibility property.

**parent: **This property contains the handle of the parent. The
  parent of the text entity should be of the type **"Axes"** or
  **"Compound"** .
**children: **A vector containing the handles of all graphics objects
  children of the Compound These graphics objects can be of type
  **"Compound"** , **"Rectangle"** , **"Polyline"** , **"Patch"** ,
  **"Segs"** , **"Arc"** , **"Grayplot"** ,..
**visible: **This field contains the **visible** property value for
  the entity . It should be **"on" ** or **"off"** . By default, value
  is **"on" ** where graphics entities children of the Compound are
  drawn according to their visibility property. If **"off"** all
  children of Compound are not displayed on the screen.
**user_data: **This field can be use to store any scilab variable in
  the figure data structure, and to retreive it.




See Also
~~~~~~~~

` **glue** `_,` **unglue** `_,` **graphics_entities** `_,



Author
~~~~~~

Djalel ABDEMOUCHE

.. _
      : ://./graphics/graphics_entities.htm
.. _
      : ://./graphics/unglue.htm
.. _
      : ://./graphics/glue.htm


