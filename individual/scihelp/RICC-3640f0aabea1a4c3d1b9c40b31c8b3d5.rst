


RICC
====

Riccati Equation



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Riccati Equation`_
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

This block computes the solution of Riccati equation using different
method and for both case continuous and discrete.

When the **Type** parameter is set to:


+ **1** : The Riccati equation in continuous time is:
  A*X+X*A+C-X*D*X=0
+ **2** : The Riccati equation in discrete time is:
  A*X*(inv(In-D))*A-X+C=0


In this equations A is an NxN matrix, it is the first input of the
block, C and D are two NxN symmetrics matrices and are respectively
the second and third input of the RICC block. X represent the output
of the block, it is also a NxN matrix.

The user can choose between two methods of computation with **Model**
parameter. If this parameter is set to:


+ **1** : the block uses the Schur method for the discret and
  continuous cases.
+ **2** : the block uses the matrix sign function approach method for
  continuous time case and the inverse free spectral decomposition
  method for discret time case.






Dialog box
~~~~~~~~~~






+ **Type (1=Cont 2=Disc)** For continuous time signal set this
  parameter to 1. For discrete input time set it to 2. Properties : Type
  'vec' of size 1.
+ **Model(1=Schr 2=sign(cont) inv(disc))** To use the Schur method in
  computation set this parameter to 1. To use matrix sign function
  approach in continuous case or the inverse free spectral decomposition
  method in discrete case set this parameter to 2. Properties : Type
  'vec' of size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,-1] / type 1** **- port 2
  : size [-1,-1] / type 1** **- port 3 : size [-1,-1] / type 1**
+ **regular outputs:** **- port 1 : size [-1,-1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** ricc_m




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/MatrixOp/RICC.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/ricc_m.c




See also
~~~~~~~~


+ `ricc (Scilab function)`_
+ `riccati (Scilab function)`_


.. _See also: RICC-3640f0aabea1a4c3d1b9c40b31c8b3d5.html#Seealso_RICC
.. _Matrix operation palette: Matrix_pal.html
.. _Computational function: RICC-3640f0aabea1a4c3d1b9c40b31c8b3d5.html#Computationalfunction_RICC
.. _ricc (Scilab function): ricc.html
.. _riccati (Scilab function): riccati.html
.. _Default properties: RICC-3640f0aabea1a4c3d1b9c40b31c8b3d5.html#Defaultproperties_RICC
.. _Interfacing function: RICC-3640f0aabea1a4c3d1b9c40b31c8b3d5.html#Interfacingfunction_RICC
.. _Dialog box: RICC-3640f0aabea1a4c3d1b9c40b31c8b3d5.html#Dialogbox_RICC
.. _Palette: RICC-3640f0aabea1a4c3d1b9c40b31c8b3d5.html#Palette_RICC
.. _Riccati Equation: RICC-3640f0aabea1a4c3d1b9c40b31c8b3d5.html
.. _Description: RICC-3640f0aabea1a4c3d1b9c40b31c8b3d5.html#Description_RICC


