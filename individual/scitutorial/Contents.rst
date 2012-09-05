


Contents
========

Create a tree containing contents inference data



Calling Sequence
~~~~~~~~~~~~~~~~


::

    contents=Contents(list_of_index,list_of_infer)




Arguments
~~~~~~~~~

:list_of_index list of indexes similar to indexes returned by
  `macr2tree`_.
: :list_of_infer list of "infer" tlists containing inference data for
  matching index.
: :contents a "contents" tlist
:



Description
~~~~~~~~~~~

This function create a `tlist` representing inference data for the
contents of a Cell or a Struct when using M2SCI. All input parameters
values are verified to be compatible with "M2SCI tlists". (Unknown=-1
in M2SCI) Please ensure that for each entry you insert in
`list_of_index`, you also insert an entry in `list_of_infer`.



See Also
~~~~~~~~


+ `get_contents_infer`_ Search for information in a "M2SCi tlist"
  contents
+ `Funcall`_ Create a tree representing a function call
+ `Operation`_ Create a tree representing an operation
+ `Variable`_ Create a tree representing a variable
+ `Cste`_ Create a tree representing a constant
+ `Infer`_ Create a tree containing inference data
+ `Type`_ Create a tree containing type inference data
+ `Equal`_ Create a tree representing an instruction


.. _Equal: Equal-f5f286e73bda105e538310b3190f75c5.html
.. _Infer: Infer.html
.. _Variable: Variable.html
.. _Funcall: Funcall.html
.. _Operation: Operation.html
.. _Cste: Cste.html
.. _get_contents_infer: get_contents_infer.html
.. _macr2tree: macr2tree.html
.. _Type: Type-a1fa27779242b4902f7ae3bdd5c6d508.html


