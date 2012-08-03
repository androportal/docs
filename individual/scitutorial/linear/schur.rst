====
"schur"
====

Scilab Function Last update : 20/12/2004
**schur** - [ordered] Schur decomposition of matrix and pencils



Calling Sequence
~~~~~~~~~~~~~~~~

[U,T] = schur(A)
[U,dim [,T] ]=schur(A,flag)
[U,dim [,T] ]=schur(A,extern1)

[As,Es [,Q,Z]]=schur(A,E)
[As,Es [,Q],Z,dim] = schur(A,E,flag)
[Z,dim] = schur(A,E,flag)
[As,Es [,Q],Z,dim]= schur(A,E,extern2)
[Z,dim]= schur(A,E,extern2)




Parameters
~~~~~~~~~~


+ **A** : real or complex square matrix.
+ **E** : real or complex square matrix with same dimensions as ** A**
  .
+ **flag** : character string ( **'c'** or **'d'** )
+ **extern1** : an ``external'', see below
+ **extern2** : an ``external'', see below
+ **U** : orthogonal or unitary square matrix
+ **Q** : orthogonal or unitary square matrix
+ **Z** : orthogonal or unitary square matrix
+ **T** : upper triangular or quasi-triangular square matrix
+ **As** : upper triangular or quasi-triangular square matrix
+ **Es** : upper triangular square matrix
+ **dim** : integer




Description
~~~~~~~~~~~

Schur forms, ordered Schur forms of matrices and pencils

**MATRIX SCHUR FORM**
    **Usual schur form:** **[U,T] = schur(A)** produces a Schur matrix
      **T** and a unitary matrix **U** so that **A = U*T*U'** and **U'*U =
      eye(U)** . By itself, schur( **A** ) returns **T** . If **A** is
      complex, the Complex Schur Form is returned in matrix **T** . The
      Complex Schur Form is upper triangular with the eigenvalues of **A**
      on the diagonal. If **A** is real, the Real Schur Form is returned.
      The Real Schur Form has the real eigenvalues on the diagonal and the
      complex eigenvalues in 2-by-2 blocks on the diagonal.
    **Ordered Schur forms** **[U,dim]=schur(A,'c')** returns an unitary
    matrix **U** which transforms **A** into schur form. In addition, the
    dim first columns of **U** make a basis of the eigenspace of **A**
    associated with eigenvalues with negative real parts (stable
    "continuous time" eigenspace). **[U,dim]=schur(A,'d')** returns an
    unitary matrix **U** which transforms **A** into schur form. In
    addition, the **dim** first columns of **U** span a basis of the
    eigenspace of **A** associated with eigenvalues with magnitude lower
    than 1 (stable "discrete time" eigenspace).
    **[U,dim]=schur(A,extern1)** returns an unitary matrix **U** which
    transforms **A** into schur form. In addition, the **dim** first
    columns of **U** span a basis of the eigenspace of **A** associated
    with the eigenvalues which are selected by the external function
    **extern1** (see external for details). This external can be described
    by a Scilab function or by C or Fortran procedure:
        **a Scilab function**If **extern1** is described by a Scilab function,
          it should have the following calling sequence: **s=extern1(Ev)** ,
          where **Ev** is an eigenvalue and **s** a boolean.
        **a C or Fortran procedure**If **extern1** is described by a C or
          Fortran function it should have the following calling sequence: **int
          extern1(double *EvR, double *EvI)** where **EvR** and **EvI** are
          eigenvalue real and complex parts. a true or non zero returned value
          stands for selected eigenvalue.




**PENCIL SCHUR FORMS**
    **Usual Pencil Schur form** **[As,Es] = schur(A,E)** produces a quasi
      triangular **As** matrix and a triangular **Es** matrix which are the
      generalized Schur form of the pair **A, E** . **[As,Es,Q,Z] =
      schur(A,E)** returns in addition two unitary matrices **Q** and **Z**
      such that **As=Q'*A*Z** and **Es=Q'*E*Z** .
    **Ordered Schur forms:** **[As,Es,Z,dim] = schur(A,E,'c')** returns
    the real generalized Schur form of the pencil **s*E-A** . In addition,
    the dim first columns of **Z** span a basis of the right eigenspace
    associated with eigenvalues with negative real parts (stable
    "continuous time" generalized eigenspace). **[As,Es,Z,dim] =
    schur(A,E,'d')** returns the real generalized Schur form of the pencil
    **s*E-A** . In addition, the dim first columns of **Z** make a basis
    of the right eigenspace associated with eigenvalues with magnitude
    lower than 1 (stable "discrete time" generalized eigenspace).
    **[As,Es,Z,dim] = schur(A,E,extern2)** returns the real generalized
    Schur form of the pencil **s*E-A** . In addition, the dim first
    columns of **Z** make a basis of the right eigenspace associated with
    eigenvalues of the pencil which are selected according to a rule which
    is given by the function **extern2** . (see external for details).
    This external can be described by a Scilab function or by C or Fortran
    procedure:
        **A Scilab function**If **extern2** is described by a Scilab function,
          it should have the following calling sequence:
          **s=extern2(Alpha,Beta)** , where **Alpha** and **Beta** defines a
          generalized eigenvalue and **s** a boolean.
        **C or Fortran procedure**if external **extern2** is described by a C
          or a Fortran procedure, it should have the following calling sequence:
          **int extern2(double *AlphaR, double *AlphaI, double *Beta)** if **A**
          and **E** are real and **int extern2(double *AlphaR, double *AlphaI,
          double *BetaR, double *BetaI)** if **A** or **E** are complex.
          **Alpha** , and **Beta** defines the generalized eigenvalue. a true or
          non zero returned value stands for selected generalized eigenvalue.








References
~~~~~~~~~~

Matrix schur form computations are based on the Lapack routines DGEES
and ZGEES. Pencil schur form computations are based on the Lapack
routines DGGES and ZGGES.



Examples
~~~~~~~~


::

    
    
    //SCHUR FORM OF A MATRIX
    //----------------------
    A=diag([-0.9,-2,2,0.9]);X=rand(A);A=inv(X)*A*X;
    [U,T]=schur(A);T
    
    [U,dim,T]=schur(A,'c');
    T(1:dim,1:dim)      //stable cont. eigenvalues
    
    function t=mytest(Ev),t=abs(Ev)<0.95,endfunction
    [U,dim,T]=schur(A,mytest);
    T(1:dim,1:dim)  
    
    // The same function in C (a Compiler is required)
    C=['int mytest(double *EvR, double *EvI) {' //the C code
       'if (*EvR * *EvR + *EvI * *EvI < 0.9025) return 1;'
       'else return 0; }';]
    mputl(C,TMPDIR+'/mytest.c')
    
    
    //build and link
    lp=ilib_for_link('mytest','mytest.o',[],'c',TMPDIR+'/Makefile');
    link(lp,'mytest','c'); 
    
    //run it
    [U,dim,T]=schur(A,'mytest');
    //SCHUR FORM OF A PENCIL
    //----------------------
    F=[-1,%s, 0,   1;
        0,-1,5-%s, 0;
        0, 0,2+%s, 0;
        1, 0, 0, -2+%s];
    A=coeff(F,0);E=coeff(F,1);
    [As,Es,Q,Z]=schur(A,E);
    Q'*F*Z //It is As+%s*Es
    
    
    [As,Es,Z,dim] = schur(A,E,'c')
    function t=mytest(Alpha,Beta),t=real(Alpha)<0,endfunction
    [As,Es,Z,dim] = schur(A,E,mytest)
    
    //the same function in Fortran (a Compiler is required)
    ftn=['integer function mytestf(ar,ai,b)' //the fortran code
          'double precision ar,ai,b'
          'mytestf=0'
          'if(ar.lt.0.0d0) mytestf=1'
          'end']
    mputl('      '+ftn,TMPDIR+'/mytestf.f')
    
    //build and link
    lp=ilib_for_link('mytestf','mytestf.o',[],'F',TMPDIR+'/Makefile');
    link(lp,'mytestf','f'); 
    
    //run it
    
    [As,Es,Z,dim] = schur(A,E,'mytestf')
     
      




See Also
~~~~~~~~

` **spec** `_,` **bdiag** `_,` **ricc** `_,` **pbig** `_,` **psmall**
`_,

.. _
      : ://./linear/../control/ricc.htm
.. _
      : ://./linear/psmall.htm
.. _
      : ://./linear/bdiag.htm
.. _
      : ://./linear/spec.htm
.. _
      : ://./linear/pbig.htm


