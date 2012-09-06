


Compound_properties
===================

description of the Compound entity properties



Description
~~~~~~~~~~~

The Compound entity is a third of the graphics entities hierarchy.
This entity defines interdependencies of the various graphics entities
and their global visibility property.

:parent: This property contains the handle of the parent. The parent
  of the text entity should be of the type `"Axes"` or `"Compound"`.
: :children: A vector containing the handles of all graphics objects
  children of the Compound. These graphics objects can be of type
  `"Compound"`, `"Rectangle"`, `"Polyline"`, `"Patch"`, `"Segs"`,
  `"Arc"`, `"Grayplot"`, ...
: :visible: This field contains the `visible` property value for the
  entity . It should be `"on"` or `"off"`. By default, value is `"on"`
  where graphics entities children of the Compound are drawn according
  to their visibility property. If `"off"` all children of Compound are
  not displayed on the screen.
: :user_data: This field can be use to store any scilab variable in
  the figure data structure, and to retreive it.
:



See Also
~~~~~~~~


+ `glue`_ glue a set of graphics entities into an Compound.
+ `unglue`_ unglue a coumpound object and replace it by individual
  children.
+ `graphics_entities`_ description of the graphics entities data
  structures


.. _glue: glue.html
.. _unglue: unglue.html
.. _graphics_entities: graphics_entities.html


