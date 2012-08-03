====
"colon"
====

Scilab Function Last update : April 1993
**colon** - (:) colon operator



Description
~~~~~~~~~~~

Colon symbol **:** can be used to form implicit vectors. (see also `
**linspace** `_, ` **logspace** `_)

**j:k**is the vector **[j, j+1,...,k]** (empty if **j>k** ).
**j:d:k**is the vector **[j, j+d, ..., j+m*d] **


The colon notation can also be used to pick out selected rows, columns
and elements of vectors and matrices (see also ` **extraction** `_,`
**insertion** `_)

**A(:)**is the vector of all the elements of **A** regarded as a
  single column.
**A(:,j)**ys the **j** -th column of **A**
**A(j:k)**is **[A(j),A(j+1),...,A(k)]**
**A(:,j:k)**is **[A(:,j),A(:,j+1),...,A(:,k)] **
**A(:)=w**fills the matrix **A** with entries of **w** (taken column
  by column if **w** is a matrix).




See Also
~~~~~~~~

` **matrix** `_,` **for** `_,` **linspace** `_,` **logspace** `_,

.. _
      : ://./programming/matrix.htm
.. _
      : ://./programming/../elementary/linspace.htm
.. _
      : ://./programming/insertion.htm
.. _
      : ://./programming/../elementary/logspace.htm
.. _
      : ://./programming/for.htm
.. _
      : ://./programming/extraction.htm


