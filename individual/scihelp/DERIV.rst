


DERIV
=====

Derivative



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Derivative`_
  +

    + `Palette`_
    + `Description`_
    + `Default properties`_
    + `Example`_
    + `Interfacing function`_
    + `Computational function`_
    + `Example`_





Palette
~~~~~~~


+ `Continuous time systems palette`_




Description
~~~~~~~~~~~

The Derivative block approximates the instantaneous derivative of its
input with respect to time t.

It is a measure of how an output changes as its input changes Δu. The
derivative is given by:



The derivative block has no setting and the initial output for the
block is zero.



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
+ **name of computational function:** deriv




Example
~~~~~~~

In this example, we compute and display the derivative waveform of a
sinusoidal input signal, with amplitude 2 and frequency 1.25 Hz.

The input and output waveforms of the DERIVATIVE block are shown
below:





Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Linear/DERIV.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/deriv.c (Type 4)




Example
~~~~~~~

` `_

.. _Continuous time systems
            palette: Continuous_pal.html
.. _Palette: DERIV.html#Palette_DERIV
.. _Description: DERIV.html#Description_DERIV
.. _Interfacing function: DERIV.html#Interfacingfunction_DERIV
.. _Default properties: DERIV.html#Defaultproperties_DERIV
.. _Computational function: DERIV.html#Computationalfunction_DERIV
.. _Derivative: DERIV.html
.. _Example: DERIV.html#Example_DERIV


