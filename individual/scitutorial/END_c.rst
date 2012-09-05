


END_c
=====

END_c block



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `END_c block`_
  +

    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_
    + `See also`_





Palette
~~~~~~~


+ `Sinks - Sinks palette`_




Description
~~~~~~~~~~~

That block increases the current time to the final integration time of
the simulation when it is activated :







with **Tcur** the activation date of the block and **Tf** the final
integration time defined in the in the Setup item of the simulate Menu
(scs_m.props.tf).



Dialog box
~~~~~~~~~~






+ **Final simulation time** That parameter is a date for an initial
  output event. By using a feed back from the event output port to the
  event input port, then that block can himself end the simulation at
  the time defined by this parameter. Properties : Type 'vec' of size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **number/sizes of activation inputs:** 1
+ **number/sizes of activation outputs:** 1
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** scicosexit




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Events/END_c.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/scicosexit.c (Type 4)




See also
~~~~~~~~


+ `ENDBLK - END block (Scicos Block)`_


.. _Computational
                function: END_c.html#Computationalfunction_END_c
.. _Description: END_c.html#Description_END_c
.. _See also: END_c.html#Seealso_END_c
.. _Default
                properties: END_c.html#Defaultproperties_END_c
.. _Dialog box: END_c.html#Dialogbox_END_c
.. _Sinks - Sinks palette: Sinks_pal.html
.. _ENDBLK - END block (Scicos
            Block): ENDBLK.html
.. _Interfacing
                function: END_c.html#Interfacingfunction_END_c
.. _END_c block: END_c.html


