


LOGBLK_f
========

Logarithm



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Logarithm`_
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

This block computes the logarithm of the elements of the input vector.
The user can fix the base with the parameter **Basis**. By default the
block computes the natural logarithm. The input and output port sizes
are determined by the context.



Dialog box
~~~~~~~~~~






+ **Basis** A real scalar greater than 1. Properties : Type 'vec' of
  size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,1] / type 1**
+ **regular outputs:** **- port 1 : size [-1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** logblk




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/NonLinear/LOGBLK_f.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/fortran/logblk.f (Type 0)




See also
~~~~~~~~


+ `POWBLK_f - Array power (Bloc Xcos)`_
+ `EXPBLK_m - Exponential of a scalar (Bloc Xcos)`_
+ `SQRT - Square root (Bloc Xcos)`_


.. _Math operations palette: Mathoperations_pal.html
.. _EXPBLK_m - Exponential of a scalar (Bloc Xcos): EXPBLK_m.html
.. _See also: LOGBLK_f.html#Seealso_LOGBLK_f
.. _POWBLK_f - Array power (Bloc Xcos): POWBLK_f.html
.. _Interfacing function: LOGBLK_f.html#Interfacingfunction_LOGBLK_f
.. _SQRT - Square root (Bloc Xcos): SQRT-36875f2500a09ee35d0bb7eb8c0b91b0.html
.. _Computational function: LOGBLK_f.html#Computationalfunction_LOGBLK_f
.. _Description: LOGBLK_f.html#Description_LOGBLK_f
.. _Dialog box: LOGBLK_f.html#Dialogbox_LOGBLK_f
.. _Default properties: LOGBLK_f.html#Defaultproperties_LOGBLK_f
.. _Logarithm: LOGBLK_f.html
.. _Palette: LOGBLK_f.html#Palette_LOGBLK_f


