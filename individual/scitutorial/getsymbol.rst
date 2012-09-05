****


getsymbol
=========

dialog to select a symbol and its size. **Obsolete function**



Calling Sequence
~~~~~~~~~~~~~~~~


::

    c=getsymbol([title])




Arguments
~~~~~~~~~

:title string, dialog title.
: :c vector of size 2 `[n,sz]`.
:



Description
~~~~~~~~~~~

This function designed to work with the `xset`_ function **is also
obsolete** .Use the property editor `ged`_ instead.

`getsymbol` opens a dialog choice box with title `title` if given
where the user can select a symbol and its size. `getsymbol` returns
the id of the mark `n` and the id of its size `sz`.



See Also
~~~~~~~~


+ `ged`_ Scilab Graphic Editor
+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `segs_properties`_ description of the Polyline entity properties
+ `segs_properties`_ description of the Segments entity properties


.. _set: set.html
.. _segs_properties: segs_properties.html
.. _ged: ged.html
.. _xset: xset.html
.. _segs_properties: polyline_properties.html


