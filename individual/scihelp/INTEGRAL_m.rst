


INTEGRAL_m
==========

Integration



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Integration`_
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


+ `Continuous time systems palette`_




Description
~~~~~~~~~~~

This block is an integrator. The output y is the integral of the input
u at the current time step t.
Where y0 is an initial condition and t0 is its corresponding time.


Dialog box
~~~~~~~~~~

The parameter dialog box allows you to define:


+ The initial condition with or without saturation limit.



+ The upper and lower limits on the integral.


The dialog box also allows you to add an event port to the block in
order to reset its state to a specified initial condition.

If ”re-initialization” is selected the following yields:


+ The value to be integrated shall be connected to the integral block
  port number 1. (the port in the upper left corner of the integral
  block)



+ The value that the integrator shall initate to, at each trigger
  signal on the redly marked trigger port, shall be connected to the
  integral block port number 2. (the port in the lower left corner of
  the integral block).









+ **Initial Condition** A vector/scalar initial conditions. With that
  parameter, one can define the datatype of the input/output. It can be
  a real or a complex type. Properties : Type 'mat' of size [-1,-1].
+ **With re-initialization** To reset its state to the specified
  initial condition based on an external signal select **1** .
  Properties : Type 'vec' of size 1.
+ **With saturation** If selected, limits the states to a value
  between the Lower saturation limit and Upper saturation limit
  parameters. Properties : Type 'vec' of size 1.
+ **Upper limit** The upper limit for the integral. Properties : Type
  'mat' of size [-1,-1].
+ **Lower limit** The lower limit for the integral. Properties : Type
  'mat' of size [-1,-1].




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** yes
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [1,1] / type 1**
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** yes
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** integral_func




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Linear/INTEGRAL_m.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/integral_func.c
+ SCI/modules/scicos_blocks/src/c/integralz_func.c




Example 1
~~~~~~~~~

This sample model demonstrates how to use the integrator's state port.

The re-initialization parameter is set to 1, the Upper limit to 1 and
the lower limit to -1.





Example 2
~~~~~~~~~

` `_

.. _Continuous time systems
            palette: Continuous_pal.html
.. _Integration: INTEGRAL_m.html
.. _Example: INTEGRAL_m.html#Example_INTEGRAL_m
.. _Palette: INTEGRAL_m.html#Palette_INTEGRAL_m
.. _Description: INTEGRAL_m.html#Description_INTEGRAL_m
.. _Computational function: INTEGRAL_m.html#Computationalfunction_INTEGRAL_m
.. _Dialog box: INTEGRAL_m.html#Dialogbox_INTEGRAL_m
.. _Interfacing function: INTEGRAL_m.html#Interfacingfunction_INTEGRAL_m
.. _Default properties: INTEGRAL_m.html#Defaultproperties_INTEGRAL_m


