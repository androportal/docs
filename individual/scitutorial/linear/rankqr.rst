====
"rankqr"
====

Scilab Function Last update : April 1999
**rankqr** - rank revealing QR factorization



Calling Sequence
~~~~~~~~~~~~~~~~

[Q,R,JPVT,RANK,SVAL]=rankqr(A, [RCOND,JPVT])




Parameters
~~~~~~~~~~


+ **A** : real or complex matrix
+ **RCOND** : real number used to determine the effective rank of
  **A** , which is defined as the order of the largest leading
  triangular submatrix **R11** in the QR factorization with pivoting of
  **A** , whose estimated condition number < **1/RCOND** .
+ **JPVT** : integer vector on entry, if **JPVT(i)** is not 0, the
  **i** -th column of ** A** is permuted to the front of **AP** ,
  otherwise column **i** is a free column. On exit, if **JPVT(i) = k** ,
  then the **i** -th column of **A*P** was the **k** -th column of **A**
  .
+ **RANK** : the effective rank of **A** , i.e., the order of the
  submatrix **R11** . This is the same as the order of the submatrix
  **T1** in the complete orthogonal factorization of **A** .
+ **SVAL** : real vector with 3 components; The estimates of some of
  the singular values of the triangular factor **R** . **SVAL(1)** is
  the largest singular value of **R(1:RANK,1:RANK)** ; **SVAL(2)** is
  the smallest singular value of **R(1:RANK,1:RANK)** ; **SVAL(3)** is
  the smallest singular value of **R(1:RANK+1,1:RANK+1)** , if **RANK**
  < **MIN(M,N)** , or of **R(1:RANK,1:RANK)** , otherwise.




Description
~~~~~~~~~~~

To compute (optionally) a rank-revealing QR factorization of a real
general M-by-N real or complex matrix **A** , which may be rank-
deficient, and estimate its effective rank using incremental condition
estimation.

The routine uses a QR factorization with column pivoting:


::

    
    
            A * P = Q * R,  where  R = [ R11 R12 ],
                                       [  0  R22 ]
    
        


with **R11** defined as the largest leading submatrix whose estimated
condition number is less than **1/RCOND** . The order of **R11** ,
**RANK** , is the effective rank of **A** .

If the triangular factorization is a rank-revealing one (which will be
the case if the leading columns were well- conditioned), then
**SVAL(1)** will also be an estimate for the largest singular value of
**A** , and **SVAL(2)** and **SVAL(3)** will be estimates for the
**RANK** -th and **(RANK+1)** -st singular values of **A** ,
respectively.

By examining these values, one can confirm that the rank is well
defined with respect to the chosen value of **RCOND** . The ratio
**SVAL(1)/SVAL(2)** is an estimate of the condition number of
**R(1:RANK,1:RANK)** .



Examples
~~~~~~~~


::

    
    
    A=rand(5,3)*rand(3,7);
    [Q,R,JPVT,RANK,SVAL]=rankqr(A,%eps)
     
      




See Also
~~~~~~~~

` **qr** `_,` **rank** `_,



Used Function
~~~~~~~~~~~~~

Slicot library routines MB03OD, ZB03OD.

.. _
      : ://./linear/rank.htm
.. _
      : ://./linear/qr.htm


