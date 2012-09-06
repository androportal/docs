


SUBMAT
======

Sub-matrix Extraction



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Sub-matrix Extraction`_
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

This block outputs a sub matrix of the input matrix. The dimensions of
the input matrix are specified in the **Input Dimension** parameter.
The user gives the range of extraction with four parameters:


+ The parameters **Starting Row Index** and **Ending Row Index**
  specify the lines range to be extracted.
+ The parameters **Starting Column Index** and **Ending Column Index**
  specify the column range to be extracted.






Dialog box
~~~~~~~~~~






+ **Datatype (1=real double 2=Complex)** It indicates the type of the
  output. It support only the two types double (1) and complex (2). If
  we input another entry in this label xcos will print the message
  "Datatype is not supported". Properties : Type 'vec' of size 1.
+ **Starting Row Index** The first row of the sub-matrix. Properties :
  Type 'vec' of size 1.
+ **Ending Row Index** The last row of the sub-matrix. Properties :
  Type 'vec' of size 1.
+ **Starting Column Index** The first column of the sub-matrix.
  Properties : Type 'vec' of size 1.
+ **Ending Column Index** The last column of the sub-matrix.
  Properties : Type 'vec' of size 1.
+ **Input Dimension** The Matrix input dimensions. Properties : Type
  'vec' of size 2.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,-2] / type 1**
+ **regular outputs:** **- port 1 : size [-1,-2] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** submat




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/MatrixOp/SUBMAT.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/submat.c
+ SCI/modules/scicos_blocks/src/c/submatz.c


.. _Sub-matrix Extraction: SUBMAT.html
.. _Palette: SUBMAT.html#Palette_SUBMAT
.. _Computational function: SUBMAT.html#Computationalfunction_SUBMAT
.. _Dialog box: SUBMAT.html#Dialogbox_SUBMAT
.. _Matrix operation palette: Matrix_pal.html
.. _Description: SUBMAT.html#Description_SUBMAT
.. _Interfacing function: SUBMAT.html#Interfacingfunction_SUBMAT
.. _Default properties: SUBMAT.html#Defaultproperties_SUBMAT


