


FROM
====

FROM Receives data from a corresponding GOTO



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `FROM Receives data from a corresponding GOTO`_
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
block to another block without connecting them physically. The FROM
block transports its received data (from the corresponding GOTO) to
its output. Multiples FROM blocks can receive data from one GOTO,
although a GOTO can send data to multiple FROM.

The GOTO and FROM blocks are connected by the tag parameter.

For information on the visibility and limitation of these blocks
please refer to the GOTO documentation.

This block can support all the data types.





Dialog box
~~~~~~~~~~






+ **Tag** The tag of the GOTO block passing the signal to this FROM
  block. Properties : Type 'str' of size -1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **regular outputs:** **- port 1 : size [-1,-2] / type -1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** from




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Branching/FROM.sci




See also
~~~~~~~~


+ `GOTO - GOTO Pass block input to From block`_
+ `GotoTagVisibility - Define Scope of GOTO tag visibility`_


.. _Description: FROM.html#Description_FROM
.. _FROM Receives data from a corresponding GOTO: FROM.html
.. _Interfacing function: FROM.html#Interfacingfunction_FROM
.. _Dialog box: FROM.html#Dialogbox_FROM
.. _Signal routing palette: Signalrouting_pal.html
.. _Palette: FROM.html#Palette_FROM
.. _GOTO - GOTO Pass block input to From block: GOTO.html
.. _See also: FROM.html#Seealso_FROM
.. _GotoTagVisibility - Define Scope of GOTO tag visibility: GotoTagVisibility.html
.. _Default properties: FROM.html#Defaultproperties_FROM


