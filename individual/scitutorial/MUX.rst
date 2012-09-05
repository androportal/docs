


MUX
===

Multiplexer



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Multiplexer`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `Signal routing palette`_




Description
~~~~~~~~~~~

Given vector valued inputs this block merges inputs in an single
output vector. So , where are numbered from top to bottom. Input and
Output port sizes are determined by the context.



Dialog box
~~~~~~~~~~






+ **number of input ports or vector of sizes** integer greater than or
  equal to 1 and less than 8. Properties : Type 'vec' of size -1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,1] / type 1** **- port 2 :
  size [-2,1] / type 1**
+ **regular outputs:** **- port 1 : size [0,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** multiplex




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Branching/MUX.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/multiplex.c (Type 4)


.. _Dialog box: MUX.html#Dialogbox_MUX
.. _Multiplexer: MUX.html
.. _Palette: MUX.html#Palette_MUX
.. _Default properties: MUX.html#Defaultproperties_MUX
.. _Computational function: MUX.html#Computationalfunction_MUX
.. _Description: MUX.html#Description_MUX
.. _Interfacing function: MUX.html#Interfacingfunction_MUX
.. _Signal routing palette: Signalrouting_pal.html


