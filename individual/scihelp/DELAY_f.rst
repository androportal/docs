


DELAY_f
=======

Discrete time delay



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Discrete time delay`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Example`_
    + `Interfacing function`_





Palette
~~~~~~~


+ `Discrete time systems palette`_




Description
~~~~~~~~~~~

This compiled super-block implements a discretized delay It is build
with a shift register and a clock. The value of the delay is given by
the discretization time step multiplied by the number-1 of state of
the register.





Dialog box
~~~~~~~~~~






+ **Discretization time step** Set the time period of the integrated
  clock. Properties : Type 'vec' of size 1.
+ **Register initial state** Set the length and the initial conditions
  of the register. Properties : Type 'vec' of size -1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [1,1] / type 1**
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** csuper




Example
~~~~~~~

` `_



` `_





Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ `SCI/modules/scicos_blocks/macros/Linear/DELAY_f.sci`_


.. _Dialog box: DELAY_f.html#Dialogbox_DELAY_f
.. _Example: DELAY_f.html#Example_DELAY_f
.. _Discrete time systems palette: Discrete_pal.html
.. _Default properties: DELAY_f.html#Defaultproperties_DELAY_f
.. _Palette: DELAY_f.html#Palette_DELAY_f
.. _Description: DELAY_f.html#Description_DELAY_f
.. _SCI/modules/scicos_blocks/macros/Linear/DELAY_f.sci: nullscilab.scinotes/scicos_blocks/macros/Linear/DELAY_f.sci
.. _Interfacing function: DELAY_f.html#Interfacingfunction_DELAY_f
.. _Discrete time delay: DELAY_f.html


