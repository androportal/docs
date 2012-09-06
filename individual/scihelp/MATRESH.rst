


MATRESH
=======

Matrix Reshape



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Matrix Reshape`_
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

The RESHAPE block changes the dimensions of a matrix or a vector to
another dimensions specified by the user in the **output size
desired** parameter.The dimensions of the output must be less or equal
to the input size given by the **input size** parameter.

The equivalent function of this block in Scilab is `matrix`_. (Warning
: You have to specify both output dimensions explicitly and don't use
-1 to specify a dimension that must be calculated as in `matrix`_).





Dialog box
~~~~~~~~~~






+ **Datatype(1=real double 2=Complex)** It indicates the type of the
  output. It support only the two types double (1) and complex (2). If
  we input another entry in this label xcos will print the message
  "Datatype is not supported". Properties : Type 'vec' of size -1.
+ **input size** It indicates the size of the input matrix. Properties
  : Type 'vec' of size -1.
+ **output size desired** It indicates the desired output's size.
  Properties : Type 'vec' of size -1.




Example
~~~~~~~


::

    u=[1 2 3 4;5 6 7 8]
    When the output desired is [1;6] the output is:
    y=[1 2 3 4 5 6]




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
+ **name of computational function:** mat_reshape




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/MatrixOp/MATRESH.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/mat_reshape.c
+ SCI/modules/scicos_blocks/src/c/matz_reshape.c




See also
~~~~~~~~


+ `EXTRACT - Matrix Extractor (xcos Block)`_
+ `matrix (Scilab function)`_


.. _Palette: MATRESH.html#Palette_MATRESH
.. _Computational function: MATRESH.html#Computationalfunction_MATRESH
.. _Matrix operation palette: Matrix_pal.html
.. _Default properties: MATRESH.html#Defaultproperties_MATRESH
.. _EXTRACT - Matrix Extractor (xcos Block): EXTRACT.html
.. _Example: MATRESH.html
.. _Interfacing function: MATRESH.html#Interfacingfunction_MATRESH
.. _Description: MATRESH.html#Description_MATRESH
.. _matrix (Scilab function): matrix.html
.. _Dialog box: MATRESH.html#Dialogbox_MATRESH
.. _See also: MATRESH.html#Seealso_MATRESH


