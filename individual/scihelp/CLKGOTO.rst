


CLKGOTO
=======

Pass block input to CLKFROM block



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Pass block input to CLKFROM block`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `See also`_





Palette
~~~~~~~


+ `Event handling palette`_




Description
~~~~~~~~~~~

This block is used to connect events ports. For more information on
how it works please refer to the documentation of the GOTO block by
clicking on the link in the "See also" field.





Dialog box
~~~~~~~~~~






+ **Tag** This parameter identifies the Goto block whose scope is
  defined in this block. Properties : Type 'str' of size -1.
+ **Tag Visibility (1=Local 2=Scoped 3=Global)** This parameter
  idetifies the visibility of the block. It can be local(1), scoped(2)
  or global(3). Properties : Type 'vec' of size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **number/sizes of activation inputs:** 1
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** clkgoto




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Branching/CLKGOTO.sci




See also
~~~~~~~~


+ `GOTO - GOTO Pass block input to From block`_


.. _Dialog box: CLKGOTO.html#Dialogbox_CLKGOTO
.. _Interfacing function: CLKGOTO.html#Interfacingfunction_CLKGOTO
.. _Description: CLKGOTO.html#Description_CLKGOTO
.. _See also: CLKGOTO.html#Seealso_CLKGOTO
.. _Pass block input to CLKFROM block: CLKGOTO.html
.. _Default properties: CLKGOTO.html#Defaultproperties_CLKGOTO
.. _GOTO - GOTO Pass block input to From block: GOTO.html
.. _Palette: CLKGOTO.html#Palette_CLKGOTO
.. _Event handling palette: Events_pal.html


