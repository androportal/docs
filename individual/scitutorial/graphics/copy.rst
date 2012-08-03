====
"copy"
====

Scilab Function Last update : 2002
**copy** - copy a graphics entity.



Calling Sequence
~~~~~~~~~~~~~~~~

copy(h)
copy(h,h_axes)
h_copy=copy(h)




Parameters
~~~~~~~~~~


+ **h** : a handle, the handle of the entity to copy.
+ **h_axes** : a handle, the handle of the parent entity for the
  destination. It should be an axes entity.
+ **h_copy** : a handle, the handle on the entity copied.




Description
~~~~~~~~~~~

This routine can be used to make a copy of a graphics entity with all
its propeties'values, it returns the handle on this new entity.
**h_axes** omitted, graphics entity is cloned and it's copied in the
same parent axes entity.



Examples
~~~~~~~~


::

    
    
    
    
     
      




See Also
~~~~~~~~

` **get** `_,` **set** `_,` **delete** `_,` **move** `_,`
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
      : ://./graphics/delete.htm


