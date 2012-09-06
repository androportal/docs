


hypermatrices
=============

Scilab object, N dimensional matrices in Scilab



Description
~~~~~~~~~~~

Hypermatrix type allows to manipulate multidimensional arrays

They can be defined by extension of 2D matrices as follows a=[1 2;3
4];a(:,:,2)=rand(2,2)

or directly using `hypermat` function

Entries can be real or complex numbers, polynomials, rationals,
strings, booleans.

Hypermatrices are `mlists`: `mlist(['hm','dims','entries'],sz,v)`
where `sz` is the row vector of dimensions and `v` the column vector
of entries (first dimension are stored first)

NOTES: The number of dimension of hypermatrices with right-most sizes
equal to 1 are automatically reduced. An hypermatrix with only two
dimensions is automatically changed to a regular matrix (type 1).



Examples
~~~~~~~~


::

    a(1,1,1,1:2)=[1 2]
    a=[1 2;3 4];a(:,:,2)=`rand`_(2,2)
    a(1,1,:)
    
    `size`_(a)
    
    a(:,:,1) //dimensionnality reduction
    `type`_(a(:,:,1))
    
    [a a]




See Also
~~~~~~~~


+ `hypermat`_ initialize an N dimensional matrices
+ `zeros`_ matrix made of zeros
+ `ones`_ matrix made of ones
+ `grand`_ Random numbers
+ `matrix`_ reshape a vector or a matrix to a different size matrix


.. _hypermat: hypermat.html
.. _ones: ones.html
.. _zeros: zeros.html
.. _grand: grand.html
.. _matrix: matrix.html


