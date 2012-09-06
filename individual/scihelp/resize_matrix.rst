


resize_matrix
=============

create a new matrix with a different size



Calling Sequence
~~~~~~~~~~~~~~~~


::

    resMat = resize_matrix(mat,nbRow,nbCol,[typeOfMat])




Arguments
~~~~~~~~~

:mat input matrix from which the resized matrix will be created.
: :nbRow number of row of the resized matrix.
: :nbCol number of column of the resized matrix.
: :typeOfMat caracter string, type name of the resized matrix.
: :resMat resized matrix.
:



Description
~~~~~~~~~~~

Create a matrix of size `nbRow` x `nbCol` and whose elements `(i,j)`
are `mat(i,j)` if `(i,j)` is in the range of the input matrix.
Otherwise elements `(i,j)` are `0` for real or integer matrices, `%f`
for boolean matrices and an empty string for string matrices.

The type of the output matrix may be modified by specifying the
`typeOfMat` argument. In this case, be sure that the input matrix type
is compatible with this one.

For now, only real, integer matrices, boolean and character string
matrices are supported. This means that `typeOfMat` must be chosen
within: 'constant', 'boolean', 'string' or any integer type ('int8',
'int16',...).



Examples
~~~~~~~~


::

    // number matrix
    myMat = 5 * `rand`_( 3, 4 )
    myMat = resize_matrix( myMat, 3, 3 ) // reduce the matrix size
    myMatInteger = resize_matrix( myMat, 4, 4, 'int32' ) // create an integer matrix
    myMatBoolean = resize_matrix( myMat, 2, 2, 'boolean' )
    myMatBoolean = resize_matrix( myMatBoolean, 3, 5 )
    
    // string matrix
    myMatString = ["Scilab","the";"Open Source","Scientific";"Software","Package"]
    myMatString = resize_matrix( myMatString, 3, 1 )




See Also
~~~~~~~~


+ `matrix`_ reshape a vector or a matrix to a different size matrix
+ `size`_ size of objects
+ `typeof`_ object type


.. _typeof: typeof.html
.. _size: size.html
.. _matrix: matrix.html


