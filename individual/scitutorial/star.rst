


star
====

(*) multiplication operator



Description
~~~~~~~~~~~

Multiplication. Usual meaning. Valid for constant, boolean,
polynomial, rational matrices and for `syslin` lists (the meaning is
series connection).

Element-wise multiplication is denoted `x.*y`. If `x` or `y` is scalar
(1x1 matrix) `.*` is the same as `*`.

Kronecker product is `x.*.y`.

`A*.B` is an operator with no predefined meaning. It may be used to
define a new operator (see `overloading`_) with the same precedence as
`*` or `/`.



See Also
~~~~~~~~


+ `dot`_ (.) symbol
+ `slash`_ (/) right division and feed back
+ `backslash`_ (\) left matrix division.
+ `syslin`_ linear system definition
+ `overloading`_ display, functions and operators overloading
  capabilities


.. _dot: dot.html
.. _syslin: syslin.html
.. _overloading: overloading.html
.. _slash: slash.html
.. _backslash: backslash.html


