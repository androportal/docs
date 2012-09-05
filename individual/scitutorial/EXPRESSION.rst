


EXPRESSION
==========

Mathematical expression



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Mathematical expression`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Example`_
    + `Interfacing function`_





Palette
~~~~~~~


+ `User defined functions palette`_




Description
~~~~~~~~~~~

The Expression block applies the specified Scilab expressions to its
input.



Dialog box
~~~~~~~~~~






+ **number of inputs** Block input can be a scalar or vector.
  Properties : Type 'vec' of size 1
+ **scilab expression** The Scilab expression applied to the input.
  Properties : Type 'vec' of size 1
+ **use zero-crossing** Select to enable zero crossing detection.
  Properties : Type 'vec' of size 1




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** yes
+ **mode:** yes
+ **regular inputs:** **- port 1 : size [1,1] / type 1** **- port 2 :
  size [1,1] / type 1**
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** evaluate_expr




Example
~~~~~~~

The following example calculate an arbitrary expression with multiple
different configuration or blocks. `Open this example in Xcos`_







Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Misc/EXPRESSION.sci


.. _Default properties: EXPRESSION.html#Defaultproperties_EXPRESSION
.. _Dialog box: EXPRESSION.html#Dialogbox_EXPRESSION
.. _Example: EXPRESSION.html#Example_EXPRESSION
.. _Open this example in Xcos: nullscilab.xcos/xcos/examples/userdefinedfunctions_pal/en_US/EXPRESSION_en_US.xcos
.. _Mathematical expression: EXPRESSION.html
.. _User defined functions palette: Userdefinedfunctions_pal.html
.. _Palette: EXPRESSION.html#Palette_EXPRESSION
.. _Interfacing function: EXPRESSION.html#Interfacingfunction_EXPRESSION
.. _Description: EXPRESSION.html#Description_EXPRESSION


