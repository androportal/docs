


MATDIV
======

Matrix division



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Matrix division`_
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

The MATDIV block outputs the right matrix division. It is a solution
to x*B=A. The higher input is the A matrix, the lower one is the B
matrix, and the output is x.

If A is an M1xN matrix, B must be a M2xN where M1 and M2 can be
different or equal. The output x is a M1xM2 matrix.

The equivalent of MATDIV is `slash (/)`_ in Scilab.





Dialog box
~~~~~~~~~~






+ **Datatype(1=real double 2=Complex)** It indicates the type of the
  output. It support only the two types double (1) and complex (2). If
  we input another entry in this label Xcos will print the message
  "Datatype is not supported". Properties : Type 'vec' of size 1.




Example
~~~~~~~


::

    A=[1 7 3;23 32 29]
    B=[21 18 34;13 10 19;11 54 36]
    then the result of the x*B=A equation is (A/B):
    x=[-0.475 0.712 0.156;-4.350 8.381 0.491]




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,-3] / type 1** **- port 2
  : size [-2,-3] / type 1**
+ **regular outputs:** **- port 1 : size [-1,-2] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** mat_div




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/MatrixOp/MATDIV.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/mat_div.c
+ SCI/modules/scicos_blocks/src/c/matz_div.c




See also
~~~~~~~~


+ `MATBKSL - Left matrix division`_
+ `MATMUL - Matrix Multiplication`_


.. _Interfacing function: MATDIV.html#Interfacingfunction_MATDIV
.. _Description: MATDIV.html#Description_MATDIV
.. _Matrix operation palette: Matrix_pal.html
.. _MATBKSL - Left matrix division: MATBKSL.html
.. _See also: MATDIV.html#Seealso_MATDIV
.. _Computational function: MATDIV.html#Computationalfunction_MATDIV
.. _Example: MATDIV.html
.. _Palette: MATDIV.html#Palette_MATDIV
.. _Dialog box: MATDIV.html#Dialogbox_MATDIV
.. _Default properties: MATDIV.html#Defaultproperties_MATDIV
.. _MATMUL - Matrix Multiplication: MATMUL.html
.. _slash (/): slash.html


