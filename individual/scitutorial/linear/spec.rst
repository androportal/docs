====
"spec"
====

Scilab Function Last update : April 1993
**spec** - eigenvalues of matrices and pencils



Calling Sequence
~~~~~~~~~~~~~~~~

evals=spec(A)
[X,diagevals]=spec(A)

evals=spec(A,E)
[al,be]=spec(A,E)
[al,be,Z]=spec(A,E)
[al,be]=spec(A,E)
[al,be,Q,Z]=spec(A,E)





Parameters
~~~~~~~~~~


+ **A** : real or complex square matrix
+ **E** : real or complex square matrix with same dimensions as ** A**
+ **evals** : real or complex vector, the eigenvalues
+ **diagevals** : real or complex diagonal matrix (eigenvalues along
  the diagonal)
+ **al** : real or complex vector, al./be gives the eigenvalues
+ **be** : real vector, al./be gives the eigenvalues
+ **X** : real or complex invertible square matrix, matrix
  eigenvectors.
+ **Q** : real or complex invertible square matrix, pencil left
  eigenvectors.
+ **Z** : real or complex invertible square matrix, pencil right
  eigenvectors.




Description
~~~~~~~~~~~

**spec(A)**: ** evals=spec(A)** returns in vector **evals** the
  eigenvalues of **A** . ** [evals,X] =spec(A)** returns in addition the
  eigenvectors **A** (if they exist). See also **bdiag**
**spec(A,B)**: **evals=spec(A,E)** returns the spectrum of the matrix
  pencil s E - A, i.e. the roots of the polynomial matrix s E - A.
  **[al,be] = spec(A,E)** returns the spectrum of the matrix pencil s E
  - A, i.e. the roots of the polynomial matrix s E - A. The eigenvalues
  are given by **al./be** and if **be(i) = 0** the ith eigenvalue is at
  infinity. (For **E = eye(A), al./be** is **spec(A)** ). ** [al,be,Z] =
  spec(A,E)** returns in addition the matrix **Z** of generalized right
  eigenvectors of the pencil. ** [al,be,Q,Z] = spec(A,E)** returns in
  addition the matrix **Q** and **Z** of generalized left and right
  eigenvectors of the pencil.




References
~~~~~~~~~~

Matrix eigeinvalues computations are based on the Lapack routines
DGEEV and ZGEEV. Pencil eigeinvalues computations are based on the
Lapack routines DGGEV and ZGGEV.



Examples
~~~~~~~~


::

    
    
    // MATRIX EIGENVALUES
    A=diag([1,2,3]);X=rand(3,3);A=inv(X)*A*X;
    spec(A)
    //
    x=poly(0,'x');
    pol=det(x*eye()-A)
    roots(pol)
    //
    [S,X]=bdiag(A);
    clean(inv(X)*A*X)
    
    // PENCIL EIGENVALUES
    A=rand(3,3);
    [al,be,Z] = spec(A,eye(A));al./be
    clean(inv(Z)*A*Z)  //displaying the eigenvalues (generic matrix)
    A=A+%i*rand(A);E=rand(A);
    roots(det(%s*E-A))   //complex case
    
    
     
      




See Also
~~~~~~~~

` **poly** `_,` **det** `_,` **schur** `_,` **bdiag** `_,` **colcomp**
`_,

.. _
      : ://./linear/det.htm
.. _
      : ://./linear/../programming/poly.htm
.. _
      : ://./linear/schur.htm
.. _
      : ://./linear/bdiag.htm
.. _
      : ://./linear/colcomp.htm


