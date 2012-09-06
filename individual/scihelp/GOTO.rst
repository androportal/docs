


GOTO
====

GOTO Pass block input to From block



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `GOTO Pass block input to From block`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `See also`_





Palette
~~~~~~~


+ `Signal routing palette`_




Description
~~~~~~~~~~~

The main role of the GOTO/FROM blocks is to transport signals from a
block to another block without connecting them physically. The GOTO
block transports its input data to its corresponding FROM block. A
simple GOTO block can send data to multiple FROM, although a FROM can
receive data from only one GOTO.

The GOTO and FROM blocks are connected by the tag parameter.

The "Tag Visibility" parameter indicates if the location of the FROM
block is limited:

- Local: means that the corresponding FROM of that GOTO must be in the
same subsystem.

- Scoped: means that the corresponding FROM of that GOTO must be in
the same subsystem or in any subsystem below the GotoTagVisibility
block in the model hierarchy.

- Global: means that the corresponding FROM of that GOTO can be
anywhere in the model.

This block can support all the data types.





Dialog box
~~~~~~~~~~






+ **Tag** This parameter identifies the Goto block whose scope is
  defined in this block. Properties : Type 'str' of size -1.
+ **Tag Visibility(1=Local 2=scoped 3= global)** This parameter
  identifies the visibility of the block. It can be local(1), scoped(2)
  or global(3). Properties : Type 'vec' of size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,-2] / type -1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** goto




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Branching/GOTO.sci




See also
~~~~~~~~


+ `FROM - FROM Receives data from a corresponding GOTO`_
+ `GotoTagVisibility - Define Scope of GOTO tag visibility`_


.. _Signal routing palette: Signalrouting_pal.html
.. _FROM - FROM Receives data from a corresponding GOTO: FROM.html
.. _Interfacing function: GOTO.html#Interfacingfunction_GOTO
.. _Palette: GOTO.html#Palette_GOTO
.. _Description: GOTO.html#Description_GOTO
.. _Default properties: GOTO.html#Defaultproperties_GOTO
.. _Dialog box: GOTO.html#Dialogbox_GOTO
.. _GotoTagVisibility - Define Scope of GOTO tag visibility: GotoTagVisibility.html
.. _GOTO Pass block input to From block: GOTO.html
.. _See also: GOTO.html#Seealso_GOTO


