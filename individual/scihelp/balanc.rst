


balanc
======

matrix or pencil balancing



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Ab,X]=balanc(A)
    [Eb,Ab,X,Y]=balanc(E,A)




Arguments
~~~~~~~~~

:A: a real square matrix
: :X: a real square invertible matrix
: :E: a real square matrix (same dimension as `A`)
: :Y: a real square invertible matrix.
:



Description
~~~~~~~~~~~

Balance a square matrix to improve its condition number.

`[Ab,X] = balanc(A)` finds a similarity transformation `X` such that

`Ab = inv(X)*A*X` has approximately equal row and column norms.

For matrix pencils,balancing is done for improving the generalized
eigenvalue problem.

`[Eb,Ab,X,Y] = balanc(E,A)` returns left and right transformations `X`
and `Y` such that `Eb=inv(X)*E*Y, Ab=inv(X)*A*Y`



Remark
~~~~~~

Balancing is made in the functions `bdiag` and `spec`.



Examples
~~~~~~~~


::

    A=[1/2^10,1/2^10;2^10,2^10];
    [Ab,X]=balanc(A);
    `norm`_(A(1,:))/`norm`_(A(2,:))
    `norm`_(Ab(1,:))/`norm`_(Ab(2,:))




See Also
~~~~~~~~


+ `bdiag`_ block diagonalization, generalized eigenvectors
+ `spec`_ eigenvalues of matrices and pencils
+ `schur`_ [ordered] Schur decomposition of matrix and pencils


.. _bdiag: bdiag.html
.. _schur: schur.html
.. _spec: spec.html


