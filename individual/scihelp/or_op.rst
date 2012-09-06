


|
=

logical OR operator



Calling Sequence
~~~~~~~~~~~~~~~~


::

    A|B




Description
~~~~~~~~~~~

`A|B` gives the element-wise logical `or` of the booleans matrices `A`
and `B`. `A` and `B` must be matrices with the same dimensions or one
from them must be a single boolean.



Examples
~~~~~~~~


::

    [%t %t %f] | [%f %t %t]
    [%t %t %f] | %f




See Also
~~~~~~~~


+ `or`_ logical OR of the elements of an array
+ `and`_ logical AND of the elements of an array
+ `and operator (&)`_ logical AND operator
+ `not`_ (~) logical not
+ `find`_ find indices of boolean vector or matrix true elements


.. _or: or.html
.. _and: and.html
.. _find: find.html
.. _): and_op.html
.. _not: not.html


