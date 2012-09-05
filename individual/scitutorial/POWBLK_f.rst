


POWBLK_f
========

Array power



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Array Power`_
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

This block computes an output vector y with y[i]= u[i]^a where a is
the real scalar given by the parameter **to the power of** and u the
input. The input and output port sizes are determined by the compiler
according to the connected blocks port sizes.



Dialog box
~~~~~~~~~~






+ **to the power of** A real scalar, the exponent value. Properties :
  Type 'vec' of size 1.




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
+ **name of computational function:** powblk




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/NonLinear/POWBLK_f.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/fortran/powblk.f (Type 0)




See also
~~~~~~~~


+ `LOGBLK_f - Logarithm (Bloc Xcos)`_
+ `EXPBLK_m - Exponential of a scalar (Bloc Xcos)`_
+ `SQRT - Square root (Bloc Xcos)`_


.. _Interfacing function: POWBLK_f.html#Interfacingfunction_POWBLK_f
.. _EXPBLK_m - Exponential of a scalar (Bloc Xcos): EXPBLK_m.html
.. _Description: POWBLK_f.html#Description_POWBLK_f
.. _Array Power: POWBLK_f.html
.. _Computational function: POWBLK_f.html#Computationalfunction_POWBLK_f
.. _See also: POWBLK_f.html#Seealso_POWBLK_f
.. _Math operations palette: Mathoperations_pal.html
.. _Dialog box: POWBLK_f.html#Dialogbox_POWBLK_f
.. _Default properties: POWBLK_f.html#Defaultproperties_POWBLK_f
.. _Palette: POWBLK_f.html#Palette_POWBLK_f
.. _SQRT - Square root (Bloc Xcos): SQRT-36875f2500a09ee35d0bb7eb8c0b91b0.html
.. _LOGBLK_f - Logarithm (Bloc Xcos): LOGBLK_f.html


