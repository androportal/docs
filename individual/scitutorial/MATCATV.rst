


MATCATV
=======

Vertical Concatenation



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Vertical Concatenation`_
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

The MATCATV Block outputs the vertical concatenation of multiple
matrices. It is also called concatenation according to the rows. The
inputs U1,U2,...,Un must have the same number of columns. The user
must set the number of input matrices in the **Number of input**
parameter.

The output is a (M1+M2+...+Mn)-by-N matrix, where M1,M2,...,Mn are the
numbers of rows of the inputs matrices, and N is the number of
columns.

The equivalent of MATCATH in Scilab is y=[U1;U2;...;Un]





Dialog box
~~~~~~~~~~






+ **Datatype(1=real double 2=Complex)** It indicates the type of the
  output. It support only the two types double (1) and complex (2). If
  we input another entry in this label xcos will print the message
  "Datatype is not supported". Properties : Type 'vec' of size 1.




Example
~~~~~~~


::

    A=[1 2;3 4;5 6]
    B=[7 8;9 10]
    The result of the vertical concatenation is:
    C=[1 2;3 4;5 6;7 8;9 10]




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
+ **name of computational function:** mat_catv




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/MatrixOp/MATCATV.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/mat_catv.c
+ SCI/modules/scicos_blocks/src/c/matz_catv.c




See also
~~~~~~~~


+ `MATCATH - Horizontal Concatenation (xcos Block)`_


.. _Palette: MATCATV.html#Palette_MATCATV
.. _Interfacing function: MATCATV.html#Interfacingfunction_MATCATV
.. _Matrix operation palette: Matrix_pal.html
.. _Default properties: MATCATV.html#Defaultproperties_MATCATV
.. _MATCATH - Horizontal Concatenation (xcos Block): MATCATH.html
.. _Dialog box: MATCATV.html#Dialogbox_MATCATV
.. _Example: MATCATV.html
.. _See also: MATCATV.html#Seealso_MATCATV
.. _Computational function: MATCATV.html#Computationalfunction_MATCATV
.. _Description: MATCATV.html#Description_MATCATV


