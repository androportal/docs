


cell
====

Create a cell array of empty matrices.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    c=cell()
    c=cell(m1)
    c=cell(m1, m2)
    c=cell(m1, m2, ..., mn)
    c=cell(x)




Arguments
~~~~~~~~~

:x Vector containing the dimensions of the cell to create.
: :m1, m2,.. Dimensions of the cell to create.
:



Description
~~~~~~~~~~~

Returns the create cell of empty matrices.

:cell() returns a `(0,0)` cell array of empty matrices.
: :cell(m1) returns a `(m1,m1)` cell array of empty matrices.
: :cell(m1,m2) returns a `(m1,m2)`cell array of empty matrices.
: :cell(m1,m2,..,mn) creates a `(m1,m2,..,mn)` cell array of empty
  matrices.
: :cell(x) returns a cell array of empty matrices with: the first
  dimension of the cell array is `x(1)`, the second dimension is `x(2),
  ...`
:



Remarks
~~~~~~~

`cell(x)`is not the same size that `x`.

`cell()` is equivalent to `cell(0)`.

If A is a cell array, you can access the contents of an element of A
by using `A(m1, m2, ..., mn).entries`, the expression `A(1,1) =
zeros(2,2)` is not valid, the right syntax is `A(1,1).entries =
zeros(2,2)`.

If A is a cell array, you can get its dimensions by using `A.dims`
which returns an `int32` value that cannot be used as a subscript for
the cell array. In this case, the best way to get the cell array
dimensions is `size(A)`.



Examples
~~~~~~~~


::

    a=cell(3)
    b=cell(3,1)
    c=cell([2,3,4])
    
    // Assigning cell entries
    b=cell(3,1);
    
    // Assigning the first element of b using the 'entries' field
    b(1).entries=1:3
    
    // Assigning the second element of b using the 'entries' field
    b(2).entries='Scilab'
    
    // Assigning the third element of b using the 'entries' field
    b(3).entries=`poly`_(1:3,'s')
    
    // Assigning sub-cells
    X=cell(3,2);
    X(:,1)=b
    
    // Extracting a sub-cell: result is a cell
    b(1)
    b(1:2)
    
    // Extracting a sub-cell value: result is an array
    b(1).entries
    
    // Dimensions of b as an int32 value (cannont be used as an index)
    b.dims
    // Dimensions of b as a double value
    `size`_(b)




See Also
~~~~~~~~


+ `eye`_ identity matrix
+ `ones`_ matrix made of ones
+ `zeros`_ matrix made of zeros


.. _ones: ones.html
.. _zeros: zeros.html
.. _eye: eye.html


