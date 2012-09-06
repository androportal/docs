


MATDET
======

Matrix Determinant



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Matrix Determinant`_
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

The MATDET outputs the determinant of a square input matrix. If the
input is:

A=[A11 A12 A13;A21 A22 A23;A31 A32 A33]

then the output of the block has the form of:

y=A11*(A22*A33-A23*A32)-A12*(A21*A33-A23*A31)+A13*(A21*A32-A22*A31).

The equivalent function of MATDET in Scilab is `det`_.





Dialog box
~~~~~~~~~~






+ **Datatype(1=real double 2=Complex)** It indicates the type of the
  output. It support only the two types double (1) and complex (2). If
  we input another entry in this label xcos will print the message
  "Datatype is not supported". Properties : Type 'vec' of size 1.




Example
~~~~~~~


::

    U=[1 0 63;2 -2 5;9 9 4]
    y=2215




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,-1] / type 1**
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** mat_det




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/MatrixOp/MATDET.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/mat_det.c
+ SCI/modules/scicos_blocks/src/c/matz_det.c




See also
~~~~~~~~


+ `MATINV - Matrix Inverse (xcos Block)`_
+ `det (Scilab function)`_


.. _Matrix operation palette: Matrix_pal.html
.. _Interfacing function: MATDET.html#Interfacingfunction_MATDET
.. _Palette: MATDET.html#Palette_MATDET
.. _Default properties: MATDET.html#Defaultproperties_MATDET
.. _Dialog box: MATDET.html#Dialogbox_MATDET
.. _det (Scilab function): det.html
.. _Example: MATDET.html
.. _Computational function: MATDET.html#Computationalfunction_MATDET
.. _Description: MATDET.html#Description_MATDET
.. _MATINV - Matrix Inverse (xcos Block): MATINV.html
.. _See also: MATDET.html#Seealso_MATDET


