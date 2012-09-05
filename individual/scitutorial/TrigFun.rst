


TrigFun
=======

Trigonometric function



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Trigonometric function`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_
    + `Voir aussi`_





Palette
~~~~~~~


+ `Math operations palette`_




Description
~~~~~~~~~~~

The Trigonometric Function block performs numerous common
trigonometric functions. You can select a function among those quoted
in this table :


**Function** **Definition** **Output** sin Sine of the input (radians)
y = sin(u) cos Cosine of the input (radians) y = cos(u) tan Tangent of
the input (radians) y = tan(u) asin Inverse sine (radians) of the
input y = asin(u) acos Inverse cosine (radians) of the input y =
acos(u) atan Inverse tangent (radians) of the input y = atan(u) atan2
Four quadrant inverse tangent (radians) of the input y = atan2(u) sinh
Hyperbolic sine of the input y = sinh(u) cosh Hyperbolic cosine of the
input y = cosh(u) tanh Hyperbolic tangent of the input y = tanh(u)
The block output is the result of the applied function on the scalar
input or on the vector's elements of input.



Dialog box
~~~~~~~~~~






+ **Function** The trigonometric function. Properties : Type 'str' of
  size 1




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
+ **name of computational function:** sin_blk




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/NonLinear/TrigFun.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/acos_blk.c (Type 4)
+ SCI/modules/scicos_blocks/src/c/acosh_blk.c (Type 4)
+ SCI/modules/scicos_blocks/src/c/asin_blk.c (Type 4)
+ SCI/modules/scicos_blocks/src/c/asinh_blk.c (Type 4)
+ SCI/modules/scicos_blocks/src/c/atan_blk.c (Type 4)
+ SCI/modules/scicos_blocks/src/c/atanh_blk.c (Type 4)
+ SCI/modules/scicos_blocks/src/c/cos_blk.c (Type 4)
+ SCI/modules/scicos_blocks/src/c/cosh_blk.c (Type 4)
+ SCI/modules/scicos_blocks/src/c/sin_blk.c (Type 4)
+ SCI/modules/scicos_blocks/src/c/sinh_blk.c (Type 4)
+ SCI/modules/scicos_blocks/src/c/tan_blk.c (Type 4)
+ SCI/modules/scicos_blocks/src/c/tanh_blk.c (Type 4)




See also
~~~~~~~~


+ `COSBLK_f - Cosine (Bloc Xcos)`_
+ `SINBLK_f - Sine (Bloc Xcos)`_
+ `TANBLK_f - Tangent (Bloc Xcos)`_


.. _Computational function: TrigFun.html#Computationalfunction_TrigFun
.. _SINBLK_f - Sine (Bloc Xcos): SINBLK_f.html
.. _Interfacing function: TrigFun.html#Interfacingfunction_TrigFun
.. _COSBLK_f - Cosine (Bloc Xcos): COSBLK_f.html
.. _Trigonometric function: TrigFun.html
.. _Voir aussi: TrigFun.html#Seealso_TrigFun
.. _Palette: TrigFun.html#Palette_TrigFun
.. _Math operations palette: Mathoperations_pal.html
.. _TANBLK_f - Tangent (Bloc Xcos): TANBLK_f.html
.. _Dialog box: TrigFun.html#Dialogbox_TrigFun
.. _Default properties: TrigFun.html#Defaultproperties_TrigFun
.. _Description: TrigFun.html#Description_TrigFun


