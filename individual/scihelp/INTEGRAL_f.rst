


INTEGRAL_f
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





Palette
~~~~~~~


+ `Continuous time systems palette`_




Description
~~~~~~~~~~~

This block is an integrator. The output is the integral of the input.



Dialog box
~~~~~~~~~~






+ **Initial Condition** A scalar that gives the initial condition.
  Properties : Type 'vec' of size 1.




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
+ **name of computational function:** integr




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Linear/INTEGRAL_f.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/fortran/integr.f (Type 0)


.. _Default
                properties: INTEGRAL_f.html#Defaultproperties_INTEGRAL_f
.. _Computational
                function: INTEGRAL_f.html#Computationalfunction_INTEGRAL_f
.. _Dialog box: INTEGRAL_f.html#Dialogbox_INTEGRAL_f
.. _Description: INTEGRAL_f.html#Description_INTEGRAL_f
.. _Integration: INTEGRAL_f.html
.. _Interfacing
                function: INTEGRAL_f.html#Interfacingfunction_INTEGRAL_f
.. _Continuous time systems palette: Continuous_pal.html
.. _Palette: INTEGRAL_f.html#Palette_INTEGRAL_f


