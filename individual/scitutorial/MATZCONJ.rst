


MATZCONJ
========

Conjugate of Matrix's Elements



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Conjugate of Matrix's Elements`_
  +

    + `Palette`_
    + `Description`_
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

This blocks computes a matrix containing the conjugate of the elements
of a complex input matrix.

The equivalent function of this block in Scilab is `conj`_.





Example
~~~~~~~


::

    --                  --                  --                  --
    | 1+i   2+3i    3+2i |   Conjugate     | 1-i   2-3i    3-2i |
    | 4+i   5-8i    6-2i |   ----------->   | 4-i   5+8i    6+2i |
    --                  --                  --                  --




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,-2] / type 2**
+ **regular outputs:** **- port 1 : size [-1,-2] / type 2**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** matz_conj




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/MatrixOp/MATZCONJ.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/matz_conj.c




See also
~~~~~~~~


+ `MATTRAN - Matrix Transpose (xcos Block)`_
+ `conj (Scilab function)`_


.. _Computational function: MATZCONJ.html#Computationalfunction_MATZCONJ
.. _Interfacing function: MATZCONJ.html#Interfacingfunction_MATZCONJ
.. _Default properties: MATZCONJ.html#Defaultproperties_MATZCONJ
.. _MATTRAN - Matrix Transpose (xcos Block): MATTRAN.html
.. _conj (Scilab function): conj.html
.. _See also: MATZCONJ.html#Seealso_MATZCONJ
.. _Matrix operation palette: Matrix_pal.html
.. _Palette: MATZCONJ.html#Palette_MATZCONJ
.. _Example: MATZCONJ.html
.. _Description: MATZCONJ.html#Description_MATZCONJ


