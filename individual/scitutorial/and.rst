


and
===

logical AND of the elements of an array



Calling Sequence
~~~~~~~~~~~~~~~~


::

    b=and(A), b=and(A,'*')
    b=and(A,'r'), b=and(A,1)
    b=and(A,'c'), b=and(A,2)




Description
~~~~~~~~~~~

`and(A)` is the logical AND of elements of the boolean matrix `A`.
`and(A)` returns `%T` ("true") if all entries of `A` are `%T`.

`and([])` returns `%T`.

`y=and(A,'r')` (or, equivalently, `y=and(A,1)`) is the row-wise AND.
It returns in each entry of the row vector `y` the AND of the rows of
`x` (The AND is performed on the row index : `y(j)=
and(A(i,j),i=1,m)`).

`y=and(A,'c')` (or, equivalently, `y=and(A,2)`) is the column-wise
AND. It returns in each entry of the column vector `y` the AND of the
columns of `x` (The AND is performed on the column index: `y(i)=
and(A(i,j),j=1,n)`).



See Also
~~~~~~~~


+ `not`_ (~) logical not
+ `and operator (&)`_ logical AND operator
+ `or`_ logical OR of the elements of an array


.. _or: or.html
.. _not: not.html
.. _): and_op.html


