


BIGSOM_f
========

Scalar or vector Addition/Soustraction



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Sum`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_
    + `Example`_
    + `See also`_





Palette
~~~~~~~


+ `Math operations palette`_




Description
~~~~~~~~~~~

This block performs addition or soustraction on its scalar or vector
inputs.The user can adjust the gain for each input with the parameter
**Inputs ports signs/gain**. The behavior of the block is summarized
in the following table :


**Number of inputs** **Operation** **Remarks** One y = k*u k is the
scalar value in **Inputs ports signs/gain** parameter. The block has
the behavior of a gain. Two or more y = k[1]*u1+k[2]*u2+...+k[n]*uN k
is the vector value write in **Inputs ports signs/gain** parameter. To
subtract an input *ui*, set a negative value in k[i].


Dialog box
~~~~~~~~~~






+ **Inputs ports signs/gain** Set sign and a gain for each inputs.
  Properties : Type 'vec' of size -1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,1] / type 1** **- port 2 :
  size [-1,1] / type 1**
+ **regular outputs:** **- port 1 : size [-1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** sum




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Linear/BIGSOM_f.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/sum.c (Type 2)




Example
~~~~~~~

` `_



See also
~~~~~~~~


+ `SUMMATION - Matrix Addition/Subtraction (Xcos block)`_
+ `SUM_f - Summation (Xcos block)`_


.. _Sum: BIGSOM_f.html
.. _Default
                properties: BIGSOM_f.html#Defaultproperties_BIGSOM_f
.. _Palette: BIGSOM_f.html#Palette_BIGSOM_f
.. _See also: BIGSOM_f.html#Seealso_BIGSOM_f
.. _Computational
                function: BIGSOM_f.html#Computationalfunction_BIGSOM_f
.. _Dialog box: BIGSOM_f.html#Dialogbox_BIGSOM_f
.. _Example: BIGSOM_f.html#Example_BIGSOM_f
.. _SUM_f - Summation (Xcos block): SUM_f.html
.. _SUMMATION - Matrix Addition/Subtraction (Xcos block): SUMMATION.html
.. _Interfacing
                function: BIGSOM_f.html#Interfacingfunction_BIGSOM_f
.. _Math operations palette: Mathoperations_pal.html
.. _Description: BIGSOM_f.html#Description_BIGSOM_f


