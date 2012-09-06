


ENDBLK
======

END block



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `END block`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Compiled Super Block content`_
    + `See also`_





Palette
~~~~~~~


+ `Sinks - Sinks palette`_




Description
~~~~~~~~~~~

That block can be used to set the final time of the simulation. When
that block is truely parametrized then the simulator will jump to the
'final integration time' defined in the Setup item of the simulate
Menu from the time defined by the parameter 'Final simulation time' of
the dialog box. That parameter can be a numerical value or a symbolic
variable defined in the scicos context.



Dialog box
~~~~~~~~~~






+ **Final simulation time** Set the final time of the simulation. When
  simulator reaches that value then the current time will jump to the
  final integration time. Properties : Type 'vec' of size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** csuper




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Misc/ENDBLK.sci




Compiled Super Block content
~~~~~~~~~~~~~~~~~~~~~~~~~~~~





See also
~~~~~~~~


+ `END_c - END_c block (Scicos Block)`_


.. _Interfacing
                function: ENDBLK.html#Interfacingfunction_ENDBLK
.. _Description: ENDBLK.html#Description_ENDBLK
.. _Palette: ENDBLK.html#Palette_ENDBLK
.. _Default
                properties: ENDBLK.html#Defaultproperties_ENDBLK
.. _Sinks - Sinks palette: Sinks_pal.html
.. _Dialog box: ENDBLK.html#Dialogbox_ENDBLK
.. _END_c - END_c block (Scicos
            Block): END_c.html
.. _Compiled Super Block
                content: ENDBLK.html
.. _See also: ENDBLK.html#Seealso_ENDBLK


