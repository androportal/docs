


DOLLAR_f
========

Delay operator



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Delay operator`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Example`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `Discrete time systems palette`_




Description
~~~~~~~~~~~

The Unit Delay block delays its input by the specified sample period.
This block is equivalent to the 1/z discrete-time operator. The block
accepts one input and generates one output, which can be either both
scalar or both vector. If the input is a vector, all elements of the
vector are delayed by the same sample period.



Dialog box
~~~~~~~~~~






+ **initial condition** The output of the simulation for the first
  sampling period, during which the output of the Unit Delay block is
  otherwise undefined. Properties : Type 'vec' of size -1.
+ **Inherit (no:0, yes:1)** When "Inherit" is yes, the block inherit
  its event input. Properties : Type 'vec' of size -1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [1,1] / type 1**
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 1
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** yes
+ **object discrete-time state:** no
+ **name of computational function:** dollar




Example
~~~~~~~

` `_







Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Linear/DOLLAR_f.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/fortran/dollar.f (Type 0)


.. _Interfacing
                function: DOLLAR_f.html#Interfacingfunction_DOLLAR_f
.. _Discrete time systems palette: Discrete_pal.html
.. _Palette: DOLLAR_f.html#Palette_DOLLAR_f
.. _Delay operator: DOLLAR_f.html
.. _Example: DOLLAR_f.html#Example_DOLLAR_f
.. _Computational
                function: DOLLAR_f.html#Computationalfunction_DOLLAR_f
.. _Default
                properties: DOLLAR_f.html#Defaultproperties_DOLLAR_f
.. _Dialog box: DOLLAR_f.html#Dialogbox_DOLLAR_f
.. _Description: DOLLAR_f.html#Description_DOLLAR_f


