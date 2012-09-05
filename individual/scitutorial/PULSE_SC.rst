


PULSE_SC
========

Pulse Generator



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Pulse Generator`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `See also`_





Palette
~~~~~~~


+ `Sources palette`_




Description
~~~~~~~~~~~

This block is a Pulse Generator. It generates a pulse at a rate of
**1/P** where **P** is the period of the signal. The **Phase delay**
gives the value (in time) of the first event. The **Phase delay**
known also as **Offset** must be less than the
`Frequency*(1-(Pulse_Width/100))`. The second parameter of the block
gives the **Pulse width** and the fourth parameter gives the **Pulse
amplitude**.



Dialog box
~~~~~~~~~~






+ **Phase delay (secs)** The offset of the block. It must be less than
  `Frequency*(1-(Pulse_width/100))`. Type 'pol' of size -1.
+ **Pulse Width (% of period)** The pulse width. It can take values
  from 1 to 100. Type 'pol' of size -1.
+ **Period (secs)** The Period of the signal. Properties : Type 'pol'
  of size -1.
+ **Amplitude** The amplitude of the pulse. It can support all scicos
  types. Properties : Type 'mat' of size [-1,-1].




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
+ **name of computational function:** csuper




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ `SCI/modules/scicos_blocks/macros/Sources/PULSE_SC.sci`_




See also
~~~~~~~~


+ `STEP_FUNCTION`_ Step Function
+ `RAMP`_ Ramp
+ `CURV_f`_ Curve
+ `Sigbuilder`_ Signal creator/generator


.. _Pulse Generator: PULSE_SC.html
.. _STEP_FUNCTION: STEP_FUNCTION.html
.. _SCI/modules/scicos_blocks/macros/Sources/PULSE_SC.sci: nullscilab.scinotes/scicos_blocks/macros/Sources/PULSE_SC.sci
.. _Palette: PULSE_SC.html#Palette_PULSE_SC
.. _Sigbuilder: Sigbuilder.html
.. _See also: PULSE_SC.html#Seealso_PULSE_SC
.. _CURV_f: CURV_f.html
.. _Sources palette: Sources_pal.html
.. _RAMP: RAMP.html
.. _Description: PULSE_SC.html#Description_PULSE_SC
.. _Dialog box: PULSE_SC.html#Dialogbox_PULSE_SC
.. _Interfacing function: PULSE_SC.html#Interfacingfunction_PULSE_SC
.. _Default properties: PULSE_SC.html#Defaultproperties_PULSE_SC


