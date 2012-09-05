


type
====

Returns the type of a variable



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [i]=type(x)




Arguments
~~~~~~~~~

:x Scilab object
: :i integer
:



Description
~~~~~~~~~~~

`type(x)` returns an integer which is the type of `x` as following:

:1 real or complex matrix of double.
: :2 `polynomial matrix`_.
: :4 `boolean matrix`_.
: :5 `sparse matrix`_.
: :6 `sparse boolean matrix`_.
: :7 Matlab sparse matrix
: :8 matrix of `integers`_ stored on 1 (int8), 2 (int16) or 4 (int32)
  bytes.
: :9 matrix of `graphic handles`_.
: :10 matrix of `character strings`_.
: :11 un-compiled function (Scilab code). Function created with
  `deff`_ with argument 'n'.
: :13 compiled `function`_ (Scilab code).
: :14 function library.
: :15 `list`_.
: :16 typed list (`tlist`_).
: :17 matrix oriented typed list (`mlist`_).
: :128 pointer (Use case: `lufact`_).
: :129 size implicit polynomial used for indexing.
: :130 built-in Scilab function, called also gateway (C, C++ or
  Fortran code).
: :0 null variable. It is mainly used internally by Scilab. If a
  function has no declared returned argument like `disp` when it is
  called it returns a null variable. If a function is called with an
  omitted argument in the argument list like `foo(a,,b)` the missing
  argument is assigned to a null variable. Note that is a null variable
  is assigned to a name, it is removed. `x=disp(1)` deletes `x`
:

Please note that, for some variables, type will return tlist or mlist
due to the internal data structure. This is the case of rational ,
state-space , hypermat and struct . Please considering the use of
`typeof`_ instead.



See Also
~~~~~~~~


+ `typeof`_ object type
+ `inttype`_ type integers used in integer data types


.. _inttype: inttype.html
.. _typeof: typeof.html
.. _graphic handles: graphics_entities.html
.. _integers: int8.html
.. _list: list.html
.. _mlist: tlist.html
.. _character strings: strings.html
.. _function: function.html
.. _polynomial matrix: poly.html
.. _boolean matrix: matrices.html
.. _deff: deff.html
.. _sparse boolean matrix: sparse.html
.. _lufact: lufact.html


