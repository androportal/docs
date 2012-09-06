


or
==

logical OR of the elements of an array



Calling Sequence
~~~~~~~~~~~~~~~~


::

    or(A), or(A,'*')
    or(A,'r'), or(A,1)
    
    or(A,'c'), or(A,2)




Description
~~~~~~~~~~~

`or(A)` gives the `or` of the elements of the boolean matrix `A`.
`or(A)` is true ( `%t`) if at least one entry of `A` is `%t`.

`or([])` returns `%F`.

`y=or(A,'r')` (or, equivalently, `y=or(A,1)`) is the row-wise OR. It
returns in each entry of the row vector `y` the OR of the rows of `x`
(The OR is performed on the row index : `y(j)= or(A(i,j),i=1,m)`).

`y=or(A,'c')` (or, equivalently, `y=or(A,2)`) is the column-wise OR.
It returns in each entry of the column vector `y` the OR of the
columns of `x` (The OR is performed on the column index: `y(i)=
or(A(i,j),j=1,n)`)).





Examples
~~~~~~~~


::

    or([%t %t %f])




See Also
~~~~~~~~


+ `or operator (|)`_ logical OR operator
+ `and`_ logical AND of the elements of an array
+ `not`_ (~) logical not
+ `find`_ find indices of boolean vector or matrix true elements


.. _not: not.html
.. _or operator (|): or_op.html
.. _find: find.html
.. _and: and.html


