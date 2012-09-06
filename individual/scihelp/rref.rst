


rref
====

computes matrix row echelon form by lu transformations



Calling Sequence
~~~~~~~~~~~~~~~~


::

    R=rref(A)




Arguments
~~~~~~~~~

:A m x n matrix with scalar entries
: :R m x n matrix,row echelon form of a
:



Description
~~~~~~~~~~~

`rref` computes the row echelon form of the given matrix by left lu
decomposition. If ones need the transformation used just call
`X=rref([A,eye(m,m)])` the row echelon form `R` is `X(:,1:n)` and the
left transformation `L` is given by `X(:,n+1:n+m)` such as `L*A=R`



Examples
~~~~~~~~


::

    A=[1 2;3 4;5 6];
    X=rref([A,`eye`_(3,3)]);
    R=X(:,1:2)
    L=X(:,3:5);L*A




See Also
~~~~~~~~


+ `lu`_ LU factorization with pivoting
+ `qr`_ QR decomposition


.. _lu: lu.html
.. _qr: qr.html


