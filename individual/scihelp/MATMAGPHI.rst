


MATMAGPHI
=========

Complex from/to Magnitude and Angle Conversion



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Complex from/to Magnitude and Angle Conversion`_
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

This block computes the magnitude and the angle of a matrix of complex
numbers or composes a matrix of complex numbers from a matrix of
magnitudes and a matrix of angles with respect to the value of
**decomposition type** parameter. The following table summarize the
bloc behaviour :


**Decomposition type** **Inputs** **Outputs** **Operation** **1** One
(complex or double) Two (double) Conversion complex to magnitude
(first output) and radian angle (second output). If the input is
double, the angle will be zero or PI and the magnitude will be equal
to the absolute of the input number. **2** Two (double) One (complex)
The block outputs a matrix of complex numbers built with the magnitude
and the radian angle inputs coming respectively from the first and
from the second inputs.




Dialog box
~~~~~~~~~~






+ **decomposition type (1=Complex2MAG&PHI 2=MAG&PHI2Complex)**
  It indicates the rule of the conversion. Properties : Type 'vec' of
  size 1.




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
+ **name of computational function:** matz_abs




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/MatrixOp/MATMAGPHI.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/matz_abs.c
+ SCI/modules/scicos_blocks/src/c/matz_absc.c




See also
~~~~~~~~


+ `MATZREIM - Complex decomposition`_


.. _Palette: MATMAGPHI.html#Palette_MATMAGPHI
.. _MATZREIM - Complex decomposition: MATZREIM.html
.. _Computational
                function: MATMAGPHI.html#Computationalfunction_MATMAGPHI
.. _See also: MATMAGPHI.html#Seealso_MATMAGPHI
.. _Interfacing
                function: MATMAGPHI.html#Interfacingfunction_MATMAGPHI
.. _Description: MATMAGPHI.html#Description_MATMAGPHI
.. _Dialog box: MATMAGPHI.html#Dialogbox_MATMAGPHI
.. _Default
                properties: MATMAGPHI.html#Defaultproperties_MATMAGPHI
.. _Math operations palette: Mathoperations_pal.html
.. _Complex from/to Magnitude and Angle Conversion: MATMAGPHI.html


