


DELAYV_f
========

Variable delay



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Variable delay`_
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

Add here a paragraph of the function description





Dialog box
~~~~~~~~~~






+ **Number of inputs** Set the vector size of the first regular input
  and the vector size of the regular output port. Properties : Type
  'vec' of size 1.
+ **Register initial condition** Set the length and the initial
  conditions of the register. Properties : Type 'vec' of size -1.
+ **Max delay** It defines the largest value the time delay input can
  have.The value cannot be negative. Properties : Type 'vec' of size 1.




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
+ **number/sizes of activation outputs:** 2
+ **continuous-time state:** no
+ **discrete-time state:** yes
+ **object discrete-time state:** no
+ **name of computational function:** delayv




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Linear/DELAYV_f.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/fortran/delayv.f (Type 1)


.. _Variable delay: DELAYV_f.html
.. _Interfacing
                function: DELAYV_f.html#Interfacingfunction_DELAYV_f
.. _Palette: DELAYV_f.html#Palette_DELAYV_f
.. _Description: DELAYV_f.html#Description_DELAYV_f
.. _Computational
                function: DELAYV_f.html#Computationalfunction_DELAYV_f
.. _Discrete time systems palette: Discrete_pal.html
.. _Dialog box: DELAYV_f.html#Dialogbox_DELAYV_f
.. _Default
                properties: DELAYV_f.html#Defaultproperties_DELAYV_f


