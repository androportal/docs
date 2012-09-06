


Funcall
=======

Create a tree representing a function call



Calling Sequence
~~~~~~~~~~~~~~~~


::

    fc=Funcall(name,lhsnb,rhslist,lhslist)




Arguments
~~~~~~~~~

:name function name (character string)
: :lhsnb number of outputs (constant)
: :rhslist list of inputs (list of "M2SCI tlists")
: :lhslist list of outputs (list of "M2SCI tlists")
: :fc a "funcall" tlist
:



Description
~~~~~~~~~~~

This function create a `tlist` representing a function call when using
M2SCI. All input parameters values are verified to be compatible with
"M2SCI tlists".



See Also
~~~~~~~~


+ `Operation`_ Create a tree representing an operation
+ `Variable`_ Create a tree representing a variable
+ `Cste`_ Create a tree representing a constant
+ `Infer`_ Create a tree containing inference data
+ `Contents`_ Create a tree containing contents inference data
+ `Type`_ Create a tree containing type inference data
+ `Equal`_ Create a tree representing an instruction


.. _Equal: Equal-f5f286e73bda105e538310b3190f75c5.html
.. _Infer: Infer.html
.. _Variable: Variable.html
.. _Operation: Operation.html
.. _Cste: Cste.html
.. _Contents: Contents.html
.. _Type: Type-a1fa27779242b4902f7ae3bdd5c6d508.html


