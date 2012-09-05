


Variable
========

Create a tree representing a variable



Calling Sequence
~~~~~~~~~~~~~~~~


::

    var=Variable(name,infer)




Arguments
~~~~~~~~~

:var variable name (character string)
: :infer inference data (a tlist of type "infer", see Infer help page)
: :var a "variable" tlist
:



Description
~~~~~~~~~~~

This function create a `tlist` representing a variable when using
M2SCI. All input parameters values are verified to be compatible with
"M2SCI tlists".



See Also
~~~~~~~~


+ `Funcall`_ Create a tree representing a function call
+ `Operation`_ Create a tree representing an operation
+ `Cste`_ Create a tree representing a constant
+ `Infer`_ Create a tree containing inference data
+ `Contents`_ Create a tree containing contents inference data
+ `Type`_ Create a tree containing type inference data
+ `Equal`_ Create a tree representing an instruction


.. _Equal: Equal-f5f286e73bda105e538310b3190f75c5.html
.. _Infer: Infer.html
.. _Funcall: Funcall.html
.. _Operation: Operation.html
.. _Cste: Cste.html
.. _Contents: Contents.html
.. _Type: Type-a1fa27779242b4902f7ae3bdd5c6d508.html


