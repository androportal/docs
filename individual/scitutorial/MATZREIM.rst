


MATZREIM
========

Complex decomposition/composition



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Complex decomposition/composition`_
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

This block decomposes a matrix of complex numbers by separating the
real and imaginary parts or composes a matrix of complex numbers by
joining the two parts with respect to the value of **decomposition
type** parameter. The following table summarize the bloc behaviour :


**Decomposition type** **Inputs** **Outputs** **Operation** **1** One
(complex) Two (double) Decomposition: The real part and the imaginary
part of the input are available respectively on the first and the
second outputs. **2** Two (double) One (complex) Composition: The
output is a matrix of complex numbers built with the real and
imaginary parts coming respectively from the first and from the second
inputs.




Dialog box
~~~~~~~~~~






+ **decomposition type (1=Complex2Real&Imag
  2=Real&Imag2Complex)** Indicates the type to use for the
  decomposition. See the description part for more information.
  Properties : Type 'vec' of size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,-2] / type 2**
+ **regular outputs:** **- port 1 : size [-1,-2] / type 1** **- port 2
  : size [-1,-2] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** matz_reim




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/MatrixOp/MATZREIM.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/matz_reim.c
+ SCI/modules/scicos_blocks/src/c/matz_reimc.c




See also
~~~~~~~~


+ `MATMAGPHI - MATMAGPHI Complex to Magnitude and Angle Conversion`_


.. _Interfacing function: MATZREIM.html#Interfacingfunction_MATZREIM
.. _Dialog box: MATZREIM.html#Dialogbox_MATZREIM
.. _See also: MATZREIM.html#Seealso_MATZREIM
.. _Default properties: MATZREIM.html#Defaultproperties_MATZREIM
.. _Complex decomposition/composition: MATZREIM.html
.. _Math operations palette: Mathoperations_pal.html
.. _Palette: MATZREIM.html#Palette_MATZREIM
.. _MATMAGPHI - MATMAGPHI Complex to Magnitude and Angle Conversion: MATMAGPHI.html
.. _Computational function: MATZREIM.html#Computationalfunction_MATZREIM
.. _Description: MATZREIM.html#Description_MATZREIM


