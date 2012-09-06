


MATTRAN
=======

Matrix Transpose



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Matrix Transpose`_
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

This block transposes an MxN matrix to a NxM matrix. The result
depends on **rule** parameter. When this parameter is equal to :


+ **1** : the block outputs the transposed matrix.
+ **2** : the block outputs the transposed matrix of the conjugate
  matrix.


The equivalent operators of this block in Scilab are y=u.' and y=u'.
See `quote (')`_.





Dialog box
~~~~~~~~~~






+ **Datatype(1=real double 2=Complex)** It indicates the data type of
  the output. It support only the two types double (1) and complex (2).
  If we input another entry in this label xcos will print the message
  "Datatype is not supported". Properties : Type 'vec' of size 1.
+ **rule(1=.' 2=')** Indicates the transposition rule. See the
  description for more information. Propriétés : Type 'vec' de taille 1.




Example
~~~~~~~


::

    .                        Complex
    --                  --                    --           --
    | 1+i   2+3i    3+2i |   Tranpose (.')    | 1+ i   4+ i |
    | 4+i   5-8i    6-2i |   ----------->     | 2+3i   5-8i |
    --                  --                    | 3+2i   6-2i |
    .                                         --           --
    .                        Complex
    --                  --                   --           --
    | 1+i   2+3i    3+2i |   Tranpose (')    | 1- i   4- i |
    | 4+i   5-8i    6-2i |   ----------->    | 2-3i   5+8i |
    --                  --                   | 3-2i   6+2i |
    .                                        --           --
    .                  Real
    --          --               --      --
    | 1   -2   3 |   Tranpose    |  1   4 |
    | 4   5    6 | ----------->  |- 2   5 |
    --          --               |  3   6 |
    .                            --      --




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,-2] / type 1**
+ **regular outputs:** **- port 1 : size [-2,-1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** mattran_m




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/MatrixOp/MATTRAN.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/mattran_m.c
+ SCI/modules/scicos_blocks/src/c/matztran_m.c




See also
~~~~~~~~


+ `MATZCONJ - Matrix conjugate (xcos Block)`_
+ `quote (Scilab function)`_


.. _Default properties: MATTRAN.html#Defaultproperties_MATTRAN
.. _Dialog box: MATTRAN.html#Dialogbox_MATTRAN
.. _Computational function: MATTRAN.html#Computationalfunction_MATTRAN
.. _Description: MATTRAN.html#Description_MATTRAN
.. _Example: MATTRAN.html
.. _Interfacing function: MATTRAN.html#Interfacingfunction_MATTRAN
.. _quote (Scilab function): quote.html
.. _Palette: MATTRAN.html#Palette_MATTRAN
.. _See also: MATTRAN.html#Seealso_MATTRAN
.. _MATZCONJ - Matrix conjugate (xcos Block): MATZCONJ.html
.. _Matrix operation palette: Matrix_pal.html


