


CUMSUM
======

Cumulative Sum



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Cumulative Sum`_
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

The CUMSUM block sums the element of an input MxN matrix U along
either the rows, the columns or the first non singleton dimension.

When the **Sum along** parameter is set to :


+ **1** : the block sums across the elements of each row. The output
  result will be a Mx1 matrix.
+ **2** : the block sums across the elements of each column. The
  output result will be a 1xN matrix.
+ **0** : the block sums across the first non singleton dimension. The
  output result will be a scalar.


The equivalent function in Scilab is `cumsum`_.



Dialog box
~~~~~~~~~~






+ **Datatype(1=real double 2=Complex)** It indicates the type of the
  output. It support only the two types double (1) and complex (2). If
  we input another entry in this label Scicos will print the message
  "Datatype is not supported". Properties : Type 'vec' of size 1.
+ **Sum along (0=the first non singleton dimension 1=Rows 2=Columns)**
  Indicate whether to sum across the rows, the columns or the first non
  singleton dimension. Properties : Type 'vec' of size 1.




Example
~~~~~~~


::

    A=[1 2 3;4 5 6;7 8 9]
    If the `sum`_ is along the row the result will be
    B=[12;15;18]




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
+ **name of computational function:** cumsum_m




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/MatrixOp/CUMSUM.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/cumsum_m.c
+ SCI/modules/scicos_blocks/src/c/cumsum_r.c
+ SCI/modules/scicos_blocks/src/c/cumsum_c.c
+ SCI/modules/scicos_blocks/src/c/cumsumz_m.c
+ SCI/modules/scicos_blocks/src/c/cumsumz_r.c
+ SCI/modules/scicos_blocks/src/c/cumsumz_c.c




See also
~~~~~~~~


+ `MATSUM - Sum of Matrix's Elements (xcos Block)`_
+ `cumsum (Scilab function)`_


.. _cumsum (Scilab function): cumsum.html
.. _Matrix operation palette: Matrix_pal.html
.. _Dialog box: CUMSUM-a85e04b226fbdce6a2da89e965ea9df.html#Dialogbox_CUMSUM
.. _s Elements (xcos Block): MATSUM.html
.. _Example: CUMSUM-a85e04b226fbdce6a2da89e965ea9df.html#Example_CUMSUM
.. _Cumulative Sum: CUMSUM-a85e04b226fbdce6a2da89e965ea9df.html
.. _See also: CUMSUM-a85e04b226fbdce6a2da89e965ea9df.html#Seealso_CUMSUM
.. _Description: CUMSUM-a85e04b226fbdce6a2da89e965ea9df.html#Description_CUMSUM
.. _Palette: CUMSUM-a85e04b226fbdce6a2da89e965ea9df.html#Palette_CUMSUM
.. _Interfacing function: CUMSUM-a85e04b226fbdce6a2da89e965ea9df.html#Interfacingfunction_CUMSUM
.. _Default properties: CUMSUM-a85e04b226fbdce6a2da89e965ea9df.html#Defaultproperties_CUMSUM
.. _Computational function: CUMSUM-a85e04b226fbdce6a2da89e965ea9df.html#Computationalfunction_CUMSUM


