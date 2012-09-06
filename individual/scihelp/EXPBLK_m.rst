


EXPBLK_m
========

Exponential of a scalar



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Exponential of a scalar`_
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

The output of this block is a vector y with y[i]=a^u[i], where the
parameter **a** is a positive scalar and u the input vector. The input
and output port sizes are determined by the compiler.



Dialog box
~~~~~~~~~~






+ **a** A real positive scalar. Properties : Type 'vec' of size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,-2] / type 1**
+ **regular outputs:** **- port 1 : size [-1,-2] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** expblk_m




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/NonLinear/EXPBLK_m.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/expblk_m.c (Type 4)




See also
~~~~~~~~


+ `POWBLK_f - Array power (Bloc Xcos)`_
+ `LOGBLK_f - Logarithm (Bloc Xcos)`_
+ `SQRT - Square root (Bloc Xcos)`_


.. _Exponential of a scalar: EXPBLK_m.html
.. _Default
                properties: EXPBLK_m.html#Defaultproperties_EXPBLK_m
.. _POWBLK_f - Array power (Bloc Xcos): POWBLK_f.html
.. _Interfacing
                function: EXPBLK_m.html#Interfacingfunction_EXPBLK_m
.. _Computational
                function: EXPBLK_m.html#Computationalfunction_EXPBLK_m
.. _See also: EXPBLK_m.html#Seealso_EXPBLK_m
.. _Dialog box: EXPBLK_m.html#Dialogbox_EXPBLK_m
.. _SQRT - Square root (Bloc Xcos): SQRT-36875f2500a09ee35d0bb7eb8c0b91b0.html
.. _Palette: EXPBLK_m.html#Palette_EXPBLK_m
.. _Description: EXPBLK_m.html#Description_EXPBLK_m
.. _Math operations palette: Mathoperations_pal.html
.. _LOGBLK_f - Logarithm (Bloc Xcos): LOGBLK_f.html


