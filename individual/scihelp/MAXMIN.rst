


MAXMIN
======

Maximum or minimum value of vectors's elements



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Maximum or minimum value of vectors's elements`_
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

This block finds the minimum/maximum values (parameter **Min or Max**)
and accepts one or two inputs depending on the parameter **Number of
input vectors** :


**Number of input vectors** **Input** **Operation** **1** Vector The
input must be a vector and the bloc output is the minimum/maximum
value of the elements of its input vector. **2** Scalar The block
output is the minimal or maximal scalar. **2** Vector The input
vectors must have the same size. The block output is a vector with the
same size as inputs.The elements of the output vector are the
minimum/maximum elements of the corresponding elements of the inputs.


Dialog box
~~~~~~~~~~






+ **Min or Max** The function (min or max) to apply to the input.
  Properties : Type 'vec' of size 1.
+ **Number of input vectors** The number of inputs to the block.
  Properties : Type 'vec' of size 1.
+ **zero-crossing** Select to enable zero crossing detection to detect
  minimum and maximum values. Properties : Type 'vec' of size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,1] / type 1**
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** minmax




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/NonLinear/MAXMIN.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/minmax.c (Type 4)




See also
~~~~~~~~


+ `MIN_f - Minimum value of vector's element (Xcos block)`_
+ `MAX_f - Maximum value of vector's elements (Xcos block)`_


.. _Description: MAXMIN.html#Description_MAXMIN
.. _s elements: MAXMIN.html
.. _s elements (Xcos block): MAX_f.html
.. _Interfacing function: MAXMIN.html#Interfacingfunction_MAXMIN
.. _Math operations palette: Mathoperations_pal.html
.. _Palette: MAXMIN.html#Palette_MAXMIN
.. _See also: MAXMIN.html#Seealso_MAXMIN
.. _s element (Xcos block): MIN_f.html
.. _Default properties: MAXMIN.html#Defaultproperties_MAXMIN
.. _Dialog box: MAXMIN.html#Dialogbox_MAXMIN
.. _Computational function: MAXMIN.html#Computationalfunction_MAXMIN


