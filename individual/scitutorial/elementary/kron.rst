====
"kron"
====

Scilab Function Last update : 28/05/2004
**kron** - Kronecker product (.*.)



Calling Sequence
~~~~~~~~~~~~~~~~

kron(A,B)
A.*.B




Description
~~~~~~~~~~~

**kron(A,B)** or **A.*.B** returns the Kronecker tensor product of two
matrices **A** and **B** . The resulting matrix has the following
block form:


::

    
                  | A(1,1) B ..... A(1,n) B |
                  |   .              .      |
        A .*. B = |   .              .      |   
                  |   .              .      |
                  | A(m,1) B ..... A(m,n) B |
        


If **A** is a **m x n** matrix and **B** a **p x q** matrix then
**A.*.B** is a **(m*p) x (n*q)** matrix.

**A** and **B** can be sparse matrices.



Examples
~~~~~~~~


::

    
    
    A=[1,2;3,4];
    kron(A,A)
    A.*.A
    sparse(A).*.sparse(A)
    A(1,1)=%i;
    kron(A,A)
     
      




