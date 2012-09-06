


RELAY_f
=======

Relay



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Relay`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_
    + `Example`_





Palette
~~~~~~~


+ `Signal routing palette`_




Description
~~~~~~~~~~~

This block routes one of the regular inputs to the unique regular
output. the choice of which input is to be routed is done, initially
by the "initial connected input" parameter. Then, every time an input
event arrives on the i-th input event port, the i-th regular input
port is routed to the regular output.



Dialog box
~~~~~~~~~~






+ **number of inputs** a scalar. Number of regular and event inputs.
  Properties : Type 'vec' of size 1
+ **initial connected input** an integer. It must be between 1 and the
  number of inputs. Properties : Type 'vec' of size 1




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** yes
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,1] / type 1** **- port 2 :
  size [-1,1] / type 1**
+ **regular outputs:** **- port 1 : size [-1,1] / type 1**
+ **number/sizes of activation inputs:** 2
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** yes
+ **object discrete-time state:** no
+ **name of computational function:** relay




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Branching/RELAY_f.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/relay.c (Type 2)




Example
~~~~~~~

` `_

.. _Relay: RELAY_f.html
.. _Default properties: RELAY_f.html#Defaultproperties_RELAY_f
.. _Example: RELAY_f.html#Example_RELAY_f
.. _Dialog box: RELAY_f.html#Dialogbox_RELAY_f
.. _Interfacing function: RELAY_f.html#Interfacingfunction_RELAY_f
.. _Description: RELAY_f.html#Description_RELAY_f
.. _Computational function: RELAY_f.html#Computationalfunction_RELAY_f
.. _Signal routing palette: Signalrouting_pal.html
.. _Palette: RELAY_f.html#Palette_RELAY_f


