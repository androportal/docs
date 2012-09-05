


DEADBAND
========

Deadband



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Deadband`_
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


+ `Discontinuities palette`_




Description
~~~~~~~~~~~

The Dead Band block provides a region of zero output.

It's a range of inputs for which the output remains unchanged. Outside
that range there is a linear relationship between the deadband input
u(k) and the dead band output v(k).

Below is shown a graph of a particular deadband:



It is defined by:



Where



When the input u(k) is between Cs and CE, the output v(k) is zero.
When the input is greater than or equal to the upper limit CE, the
output is the input minus the upper limit. When the input is less than
or equal to the lower limit Cs, the output is the input minus the
lower limit.



Dialog box
~~~~~~~~~~






+ **End of dead band** The upper limit of the dead band. Properties :
  Type 'vec' of size 1
+ **Start of dead band** The lower limit of the dead band. Properties
  : Type 'vec' of size 1
+ **zero crossing** Select to enable zero crossing detection to detect
  when the limits are reached. Properties : Type 'vec' of size 1




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** yes
+ **mode:** yes
+ **regular inputs:** **- port 1 : size [1,1] / type 1**
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** deadband




Example
~~~~~~~

The following is an example of a system with deadband. `Open this
example in Xcos`_

The input is a sine wave. The magnitude is set to 2, the frequency to
1.25 and the phase to 0. The Deadband block has the following
parameters:



This plot shows the effect of the dead band on the sine wave.





Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ `SCI/modules/scicos_blocks/macros/Misc/DEADBAND.sci`_




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/deadband.c (Type 4)


.. _Discontinuities
            palette: discontinuities_pal.html
.. _Example: DEADBAND.html#Example_DEADBAND
.. _Open this example in Xcos: nullscilab.xcos/xcos/examples/discontinuities_pal/en_US/deadband_en_US.xcos
.. _Computational
                function: DEADBAND.html#Computationalfunction_DEADBAND
.. _Interfacing
                function: DEADBAND.html#Interfacingfunction_DEADBAND
.. _Dialog box: DEADBAND.html#Dialogbox_DEADBAND
.. _SCI/modules/scicos_blocks/macros/Misc/DEADBAND.sci: nullscilab.scinotes/scicos_blocks/macros/Misc/DEADBAND.sci
.. _Palette: DEADBAND.html#Palette_DEADBAND
.. _Description: DEADBAND.html#Description_DEADBAND
.. _Deadband: DEADBAND.html
.. _Default
                properties: DEADBAND.html#Defaultproperties_DEADBAND


