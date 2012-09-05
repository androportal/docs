


MATINV
======

Matrix Inverse



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Matrix Inverse`_
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

The MATINV block outputs the inverse of a square input matrix
calculated by using the LU factorization. A warning message is printed
if the input is badly scaled or nearly singular.

The equivalent function of this block in Scilab is `inv`_.





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
+ **regular outputs:** **- port 1 : size [-1,-1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** mat_inv




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/MatrixOp/MATINV.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/mat_inv.c
+ SCI/modules/scicos_blocks/src/c/matz_inv.c




See also
~~~~~~~~


+ `MATLU - LU Factorization (xcos Block)`_
+ `MATPINV - Matrix PseudoInverse (xcos Block)`_
+ `inv (Scilab function)`_


.. _Matrix operation palette: Matrix_pal.html
.. _Computational function: MATINV.html#Computationalfunction_MATINV
.. _See also: MATINV.html#Seealso_MATINV
.. _MATPINV - Matrix PseudoInverse (xcos Block): MATPINV.html
.. _Dialog box: MATINV.html#Dialogbox_MATINV
.. _Interfacing function: MATINV.html#Interfacingfunction_MATINV
.. _Palette: MATINV.html#Palette_MATINV
.. _inv (Scilab function): inv.html
.. _Matrix Inverse: MATINV.html
.. _Default properties: MATINV.html#Defaultproperties_MATINV
.. _MATLU - LU Factorization (xcos Block): MATLU.html
.. _Description: MATINV.html#Description_MATINV


