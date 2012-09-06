


REGISTER
========

Shift Register



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Shift Register`_
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

This block realizes a shift register. At every input event, the
register is shifted one step.



Dialog box
~~~~~~~~~~






+ **Register initial condition** A column vector. It contains the
  initial state of the register. Properties : Type 'vec' of size -1
+ **Datatype** This block support all datatypes besides complex.
  Properties : Type 'vec' of size -1




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
+ **name of computational function:** delay4




Example
~~~~~~~

` `_







Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Linear/REGISTER.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/delay4_i32.c
+ SCI/modules/scicos_blocks/src/c/delay4_i16.c
+ SCI/modules/scicos_blocks/src/c/delay4_i8.c
+ SCI/modules/scicos_blocks/src/c/delay4_ui32.c
+ SCI/modules/scicos_blocks/src/c/delay4_ui16.c
+ SCI/modules/scicos_blocks/src/c/delay4_ui8.c


.. _Example: REGISTER.html#Example_REGISTER
.. _Discrete time systems palette: Discrete_pal.html
.. _Dialog box: REGISTER.html#Dialogbox_REGISTER
.. _Palette: REGISTER.html#Palette_REGISTER
.. _Computational function: REGISTER.html#Computationalfunction_REGISTER
.. _Description: REGISTER.html#Description_REGISTER
.. _Interfacing function: REGISTER.html#Interfacingfunction_REGISTER
.. _Shift Register: REGISTER.html
.. _Default properties: REGISTER.html#Defaultproperties_REGISTER


