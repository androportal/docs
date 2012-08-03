====
"Infer"
====

M2SCI Function Last update : 05/10/2004
**Infer** - Create a tree containing inference data



Calling Sequence
~~~~~~~~~~~~~~~~

infer=Infer(varargin)




Parameters
~~~~~~~~~~


+ **varargin** : data for inference

    + **varargin(1)** : list of dimensions default value is
      list(Unknown,Unknown)
    + **varargin(2)** : type ("type" tlist, see Type help page) default
      value is Type(Unknown,Unknown)
    + **varargin(3)** : contents ("contents" tlist, see Contents help
      page) default value is Contents(list(),list()). This field is only
      used if represented data is a Cell or a Struct.

+ **infer** : an "infer" tlist




Description
~~~~~~~~~~~

This function create a **tlist** representing inference data when
using M2SCI. All input parameters values are verified to be compatible
with "M2SCI tlists". (Unknown=-1 in M2SCI)



See Also
~~~~~~~~

` **Funcall** `_,` **Operation** `_,` **Variable** `_,` **Cste** `_,`
**Contents** `_,` **Type** `_,` **Equal** `_,



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
      : ://./mtlb/Operation.htm
.. _
      : ://./mtlb/Contents.htm
.. _
      : ://./mtlb/Variable.htm


