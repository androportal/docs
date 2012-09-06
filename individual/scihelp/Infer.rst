


Infer
=====

Create a tree containing inference data



Calling Sequence
~~~~~~~~~~~~~~~~


::

    infer=Infer(varargin)




Arguments
~~~~~~~~~

:varargin data for inference
    :varargin(1) list of dimensions default value is list(Unknown,Unknown)
    : :varargin(2) type ("type" tlist, see Type help page) default value
      is Type(Unknown,Unknown)
    : :varargin(3) contents ("contents" tlist, see Contents help page)
      default value is Contents(list(),list()). This field is only used if
      represented data is a Cell or a Struct.
    :

: :infer an "infer" tlist
:



Description
~~~~~~~~~~~

This function create a `tlist` representing inference data when using
M2SCI. All input parameters values are verified to be compatible with
"M2SCI tlists". (Unknown=-1 in M2SCI)



See Also
~~~~~~~~


+ `Funcall`_ Create a tree representing a function call
+ `Operation`_ Create a tree representing an operation
+ `Variable`_ Create a tree representing a variable
+ `Cste`_ Create a tree representing a constant
+ `Contents`_ Create a tree containing contents inference data
+ `Type`_ Create a tree containing type inference data
+ `Equal`_ Create a tree representing an instruction


.. _Equal: Equal-f5f286e73bda105e538310b3190f75c5.html
.. _Variable: Variable.html
.. _Funcall: Funcall.html
.. _Operation: Operation.html
.. _Cste: Cste.html
.. _Contents: Contents.html
.. _Type: Type-a1fa27779242b4902f7ae3bdd5c6d508.html


