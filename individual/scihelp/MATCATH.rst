


MATCATH
=======

Horizontal Concatenation



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Horizontal Concatenation`_
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

The MATCATH Block outputs the horizontal concatenation of multiple
matrices. It is also called concatenation according to the columns.
The inputs U1,U2,...,Un must have the same number of rows. The user
must set the number of input matrices in the **Number of input**
parameter.

The output is a M-by-(N1+N2+...+Nn) matrix, where N1,N2,...,Nn are the
numbers of columns of the inputs matrices, and M is the number of
rows.

The equivalent of MATCATH in Scilab is y=[U1 U2 ... Un].





Dialog box
~~~~~~~~~~






+ **Number of input** It indicates the number of input matrices.
  Properties : Type 'vec' of size 1.




Example
~~~~~~~


::

    A=[1 2 3;4 5 6]
    B=[7 8;9 10]
    The result of the horizontal concatenation is:
    C=[1 2 3 7 8;4 5 6 9 10]




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,-2] / type 1** **- port 2
  : size [-1,-3] / type 1**
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** mat_cath




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/MatrixOp/MATCATH.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/mat_cath.c
+ SCI/modules/scicos_blocks/src/c/matz_cath.c




See also
~~~~~~~~


+ `MATCATV - Vertical Concatenation (xcos Block)`_


.. _Description: MATCATH.html#Description_MATCATH
.. _Matrix operation palette: Matrix_pal.html
.. _See also: MATCATH.html#Seealso_MATCATH
.. _Palette: MATCATH.html#Palette_MATCATH
.. _Example: MATCATH.html
.. _Dialog box: MATCATH.html#Dialogbox_MATCATH
.. _MATCATV - Vertical Concatenation (xcos Block): MATCATV.html
.. _Interfacing function: MATCATH.html#Interfacingfunction_MATCATH
.. _Default properties: MATCATH.html#Defaultproperties_MATCATH
.. _Computational function: MATCATH.html#Computationalfunction_MATCATH


