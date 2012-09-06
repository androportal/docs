


ROOTCOEF
========

Polynomial Coefficient Computation



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Polynomial Coefficient Computation`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `Matrix operation palette`_




Description
~~~~~~~~~~~

This block computes the coefficients of a polynomial given its root
values. This roots are given on the input in the form of a column
vector. The length of the root's vector must be specified in the
**input row size** parameter.



Dialog box
~~~~~~~~~~






+ **Datatype(1=real double 2=Complex)** It indicates the type of the
  output. It support only the two types double (1) and complex (2). If
  we input another entry in this label xcos will print the message
  "Datatype is not supported". Properties : Type 'vec' of size 1.
+ **input row size** The input row size. Properties : Type 'vec' of
  size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,1] / type 1**
+ **regular outputs:** **- port 1 : size [-2,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** root_coef




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/MatrixOp/ROOTCOEF.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/root_coef.c
+ SCI/modules/scicos_blocks/src/c/rootz_coef.c


.. _Description: ROOTCOEF.html#Description_ROOTCOEF
.. _Polynomial Coefficient Computation: ROOTCOEF.html
.. _Computational function: ROOTCOEF.html#Computationalfunction_ROOTCOEF
.. _Interfacing function: ROOTCOEF.html#Interfacingfunction_ROOTCOEF
.. _Palette: ROOTCOEF.html#Palette_ROOTCOEF
.. _Matrix operation palette: Matrix_pal.html
.. _Dialog box: ROOTCOEF.html#Dialogbox_ROOTCOEF
.. _Default properties: ROOTCOEF.html#Defaultproperties_ROOTCOEF


