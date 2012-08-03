====
"typename"
====

Scilab Function Last update : April 1993
**typename** - associates a name to variable type



Calling Sequence
~~~~~~~~~~~~~~~~

[types [ [,names]]=typename()
typename(name,type)




Parameters
~~~~~~~~~~


+ **types** : integer column vector: the types codes of each defined
  data types.
+ **names** : column vector of strings: the names associated to type
  codes.
+ **type** : integer: the type code of new data type.
+ **name** : string: the name associated to the type code




Description
~~~~~~~~~~~

The function and operator overloading make use of a formal name
associated to data types to form the name of the overloading function
(see overloading). The **typename** can be used to handle this formal
names for hard coded data types (the **tlist** or **mlist** coded data
types formal names are defined in an other way, see **overloading** ).

Called without right hand side argument, **typename** returns
informations on defined data types.

Called with right hand side argument, **typename** associates a name
to a data type code.

**typename('',type)** suppress the data type given by its code
**type** out of the table of known data types.



See Also
~~~~~~~~

` **type** `_,` **typeof** `_,` **overloading** `_,` **tlist** `_,`
**mlist** `_,

.. _
      : ://./programming/mlist.htm
.. _
      : ://./programming/overloading.htm
.. _
      : ://./programming/type.htm
.. _
      : ://./programming/tlist.htm
.. _
      : ://./programming/../elementary/typeof.htm


