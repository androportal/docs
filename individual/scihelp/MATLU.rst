


MATLU
=====

LU Factorization



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `LU Factorization`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_
    + `See also`_





Palette
~~~~~~~


+ `Matrix operation palette`_




Description
~~~~~~~~~~~

The MATLU Block outputs two matrices L and U, with row pivoting, from
the LU factorization of a square input matrix. If A is the input
matrix then:

E*A=L*U where E is the permutation matrix, U an upper triangular
matrix and L a lower triangular matrix.

The equivalent function of this block in Scilab is `[l,u,e]=lu(A)`_.





Dialog box
~~~~~~~~~~






+ **Datatype(1=real double 2=Complex)** It indicates the type of the
  output. It support only the two types double (1) and complex (2). If
  we input another entry in this label xcos will print the message
  "Datatype is not supported". Properties : Type 'vec' of size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,-1] / type 1**
+ **regular outputs:** **- port 1 : size [-1,-1] / type 1** **- port 2
  : size [-1,-1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** mat_lu




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/MatrixOp/MATLU.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/mat_lu.c
+ SCI/modules/scicos_blocks/src/c/matz_lu.c




See also
~~~~~~~~


+ `MATINV - Matrix Inverse (xcos Block)`_
+ `lu (Scilab function)`_


.. _Default properties: MATLU.html#Defaultproperties_MATLU
.. _Computational function: MATLU.html#Computationalfunction_MATLU
.. _See also: MATLU.html#Seealso_MATLU
.. _Palette: MATLU.html#Palette_MATLU
.. _Interfacing function: MATLU.html#Interfacingfunction_MATLU
.. _LU Factorization: MATLU.html
.. _lu (Scilab function): lu.html
.. _Description: MATLU.html#Description_MATLU
.. _MATINV - Matrix Inverse (xcos Block): MATINV.html
.. _Dialog box: MATLU.html#Dialogbox_MATLU
.. _Matrix operation palette: Matrix_pal.html


