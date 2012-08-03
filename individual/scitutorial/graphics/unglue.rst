====
"unglue"
====

Scilab Function Last update : 28/03/2007
**unglue** - unglue a coumpound object and replace it by individual
children.



Calling Sequence
~~~~~~~~~~~~~~~~

unglue(h)
H=unglue(h)




Parameters
~~~~~~~~~~


+ **h** : a handle on an Compound.
+ **H** : a vector of handle on the resulting entities after
  unCompound.




Description
~~~~~~~~~~~

Given a handle on an Compound entity, this function destroies the
Compound and unpacks the elementary entities to associated them to its
parent. **glue** returns a vector of handles on these individual
children.



See Also
~~~~~~~~

` **get** `_,` **set** `_,` **copy** `_,` **glue** `_,`
**graphics_entities** `_,



Author
~~~~~~

Djalel ABDEMOUCHE

.. _
      : ://./graphics/graphics_entities.htm
.. _
      : ://./graphics/set.htm
.. _
      : ://./graphics/get.htm
.. _
      : ://./graphics/glue.htm
.. _
      : ://./graphics/copy.htm


