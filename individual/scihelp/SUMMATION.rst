


SUMMATION
=========

Matrix Addition/Subtraction



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Matrix Summation`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_
    + `See also`_





Palette
~~~~~~~


+ `Math operations palette`_




Description
~~~~~~~~~~~

This block performs addition or subtraction on scalar, vector or
matrix inputs. The input datatype is set with the **Datatype**
parameter. The **Number of inputs or sign vector** parameter defines
the number of inputs and operation. For a single vector's input the
block collapse the elements of the vector. Vectors/matrices inputs
must have the same size.

The behavior of the block is summarized in the following table :


**Number of inputs** **Operation** **Remarks** One y = (+/-)u *u* is a
scalar value and the block has the behavior of a unitary gain. One y =
u[1]+u[2]+...+u[N] *u* is a vector or a matrix and the block output is
the sum of the elements of the input vector or matrix. Two or more y =
k[1]*u1+k[2]*u2+...+k[N]*uN *k* is the scalar or vector value write in
the **Number of inputs or sign vector** parameter. For the addition of
all inputs, simply set this parameter to the number of inputs. To
add/subtract the input *ui*, set in this parameter a vector k with
*k[i]* = +1 (addition) or -1 (subtraction) for the input *ui*.
With integer input, on overflow the result can take different forms:

1- A normal non saturated result. By example, if type is int8 and the
result 128, the block output value will be -128.

2- A saturated result. For the previous example the block output value
will be 127.

3- An error message warning the user about the overflow.

The user can select one of these three forms by setting the **Do on
Overflow** field to 0,1 or 2.





Dialog box
~~~~~~~~~~






+ **Datatype (1=real double 2=complex 3=int32 ...)** It indicates the
  type of the input/output data. It support all datatype, number must be
  between 1 and 8. Properties : Type 'vec' of size 1.
+ **Number of inputs or sign vector (of +1,-1)** It indicates the
  number of inputs and the operation see the description for more
  detail. If you set a value other of -1 or +1, you get an error message
  box. Properties : Type 'vec' of size -1.
+ **Do on Overflow(0=Nothing 1=Saturate 2=Error)** When this parameter
  is set to zero the result is similar to a normal summation of two
  integer matrix. When it is set to 1, on overflow the block saturate
  the result. When it is set to 2, on overflow an error message box
  appears. If the Data type is double or complex this parameter is not
  used. Properties : Type 'vec' of size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,-2] / type 1** **- port 2
  : size [-1,-2] / type 1**
+ **regular outputs:** **- port 1 : size [-1,-2] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** summation




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Linear/SUMMATION.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/summation.c
+ SCI/modules/scicos_blocks/src/c/summation_z.c
+ SCI/modules/scicos_blocks/src/c/summation_i32n.c
+ SCI/modules/scicos_blocks/src/c/summation_i16n.c
+ SCI/modules/scicos_blocks/src/c/summation_i8n.c
+ SCI/modules/scicos_blocks/src/c/summation_ui32n.c
+ SCI/modules/scicos_blocks/src/c/summation_ui16n.c
+ SCI/modules/scicos_blocks/src/c/summation_ui8n.c
+ SCI/modules/scicos_blocks/src/c/summation_i32s.c
+ SCI/modules/scicos_blocks/src/c/summation_i16s.c
+ SCI/modules/scicos_blocks/src/c/summation_i8s.c
+ SCI/modules/scicos_blocks/src/c/summation_ui32s.c
+ SCI/modules/scicos_blocks/src/c/summation_ui16s.c
+ SCI/modules/scicos_blocks/src/c/summation_ui8s.c
+ SCI/modules/scicos_blocks/src/c/summation_i32e.c
+ SCI/modules/scicos_blocks/src/c/summation_i16e.c
+ SCI/modules/scicos_blocks/src/c/summation_i8e.c
+ SCI/modules/scicos_blocks/src/c/summation_ui32e.c
+ SCI/modules/scicos_blocks/src/c/summation_ui16e.c
+ SCI/modules/scicos_blocks/src/c/summation_ui8e.c




See also
~~~~~~~~


+ `BIGSOM_f - Sclar/Vector Addition/Soustraction (Xcos block)`_
+ `SUM_f - Addition (Xcos block)`_


.. _BIGSOM_f - Sclar/Vector Addition/Soustraction (Xcos block): BIGSOM_f.html
.. _Default properties: SUMMATION.html#Defaultproperties_SUMMATION
.. _See also: SUMMATION.html#Seealso_SUMMATION
.. _Description: SUMMATION.html#Description_SUMMATION
.. _SUM_f - Addition (Xcos block): SUM_f.html
.. _Matrix Summation: SUMMATION.html
.. _Math operations palette: Mathoperations_pal.html
.. _Interfacing function: SUMMATION.html#Interfacingfunction_SUMMATION
.. _Computational function: SUMMATION.html#Computationalfunction_SUMMATION
.. _Palette: SUMMATION.html#Palette_SUMMATION
.. _Dialog box: SUMMATION.html#Dialogbox_SUMMATION


