====
"Contents"
====

M2SCI Function Last update : 05/10/2004
**Contents** - Create a tree containing contents inference data



Calling Sequence
~~~~~~~~~~~~~~~~

contents=Contents(list_of_index,list_of_infer)




Parameters
~~~~~~~~~~


+ **list_of_index** : list of indexes similar to indexes returned by `
  **macr2tree** `_.
+ **list_of_infer** : list of "infer" tlists containing inference data
  for matching index.
+ **contents** : a "contents" tlist




Description
~~~~~~~~~~~

This function create a **tlist** representing inference data for the
contents of a Cell or a Struct when using M2SCI. All input parameters
values are verified to be compatible with "M2SCI tlists". (Unknown=-1
in M2SCI) Please ensure that for each entry you insert in
**list_of_index** , you also insert an entry in **list_of_infer** .



See Also
~~~~~~~~

` **get_contents_infer** `_,` **Funcall** `_,` **Operation** `_,`
**Variable** `_,` **Cste** `_,` **Infer** `_,` **Type** `_,` **Equal**
`_,



Authors
~~~~~~~

****V.C.


.. _
      : ://./mtlb/Funcall.htm
.. _
      : ://./mtlb/Cste.htm
.. _
      : ://./mtlb/Type.htm
.. _
      : ://./mtlb/Equal.htm
.. _
        : ://./mtlb/../functions/macr2tree.htm
.. _
      : ://./mtlb/Operation.htm
.. _
      : ://./mtlb/get_contents_infer.htm
.. _
      : ://./mtlb/Infer.htm
.. _
      : ://./mtlb/Variable.htm


