


MATEXPM
=======

Matrix Exponential



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Matrix Exponential`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Example`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_
    + `See also`_





Palette
~~~~~~~


+ `Matrix operation palette`_




Description
~~~~~~~~~~~

The MATEXPM outputs the matrix exponential of a square matrix input
computed by the pade's approximants. The output is a square matrix
with the same size of the input.

The equivalent of this block in Scilab is `expm`_.





Dialog box
~~~~~~~~~~






+ **Datatype(1=real double 2=Complex)** It indicates the type of the
  output. It support only the two types double (1) and complex (2). If
  we input another entry in this label xcos will print the message
  "Datatype is not supported". Properties : Type 'vec' of size 1.




Example
~~~~~~~


::

    u=[1 2 3;2 3 1;4 2 1]
    y=[182.612 196.518 141.735;172.973 190.770 133.577;204.677 220.063 159.067]




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
+ **name of computational function:** mat_expm




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/MatrixOp/MATEXPM.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/mat_expm.c
+ SCI/modules/scicos_blocks/src/c/matz_expm.c




See also
~~~~~~~~


+ `MATMUL - Matrix Multiplication (xcos Block)`_
+ `expm (Scilab function)`_


.. _Palette: MATEXPM.html#Palette_MATEXPM
.. _expm (Scilab function): expm.html
.. _Matrix operation palette: Matrix_pal.html
.. _Example: MATEXPM.html
.. _Computational function: MATEXPM.html#Computationalfunction_MATEXPM
.. _Default properties: MATEXPM.html#Defaultproperties_MATEXPM
.. _Interfacing function: MATEXPM.html#Interfacingfunction_MATEXPM
.. _MATMUL - Matrix Multiplication (xcos Block): MATMUL.html
.. _Description: MATEXPM.html#Description_MATEXPM
.. _Dialog box: MATEXPM.html#Dialogbox_MATEXPM
.. _See also: MATEXPM.html#Seealso_MATEXPM


