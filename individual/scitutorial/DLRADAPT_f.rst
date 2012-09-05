


DLRADAPT_f
==========

Discrete Zero-Pole



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Discrete Zero-Pole`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `Discrete time systems palette`_




Description
~~~~~~~~~~~

This block models system represented by zeros and poles of discrete
transfer function.



Dialog box
~~~~~~~~~~






+ **Vector of p mesh points** The parameter description 1. Properties
  : Type 'vec' of size -1.
+ **Numerator roots (one line for each mesh)** The parameter
  description 2. Properties : Type 'mat' of size [-1,-1].
+ **Denominator roots (one line for each mesh)** The parameter
  description 3. Properties : Type 'mat' of size
  ["size(%1,''*'')","-1"].
+ **Vector of gain at mesh points** The parameter description 4.
  Properties : Type 'vec' of size "size(%1,''*'')".
+ **past inputs (Num degree values)** The parameter description 5.
  Properties : Type 'vec' of size "size(%2,2)".
+ **past outputs (Den degree values)** The parameter description 6.
  Properties : Type 'vec' of size "size(%3,2)".




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [1,1] / type 1** **- port 2 :
  size [1,1] / type 1**
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 1
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** yes
+ **object discrete-time state:** no
+ **name of computational function:** dlradp




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/NonLinear/DLRADAPT_f.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/fortran/dlradp.f (Type 0)


.. _Dialog box: DLRADAPT_f.html#Dialogbox_DLRADAPT_f
.. _Default
                properties: DLRADAPT_f.html#Defaultproperties_DLRADAPT_f
.. _Discrete time systems palette: Discrete_pal.html
.. _Discrete Zero-Pole: DLRADAPT_f.html
.. _Palette: DLRADAPT_f.html#Palette_DLRADAPT_f
.. _Interfacing
                function: DLRADAPT_f.html#Interfacingfunction_DLRADAPT_f
.. _Computational
                function: DLRADAPT_f.html#Computationalfunction_DLRADAPT_f
.. _Description: DLRADAPT_f.html#Description_DLRADAPT_f


