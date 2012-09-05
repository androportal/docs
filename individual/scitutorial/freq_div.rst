


freq_div
========

Frequency division



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Frequency division`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Compiled Super Block content`_





Palette
~~~~~~~


+ `Event handling palette`_




Description
~~~~~~~~~~~

This block is a Super Block. The input event is directed once every n
times to output. The input is driven by an event clock.



Dialog box
~~~~~~~~~~






+ **Phase** positive scalar. Properties : Type 'vec' of size 1
+ **Division factor** an integer greater than 1. Properties : Type
  'vec' of size 1




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
+ **name of computational function:** csuper




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Events/freq_div.sci




Compiled Super Block content
~~~~~~~~~~~~~~~~~~~~~~~~~~~~





Examples
~~~~~~~~

The following example divides a frequence per three. `Open this
example in Xcos`_



.. _Compiled Super Block content: freq_div.html
.. _Open this example in Xcos: nullscilab.xcos/xcos/examples/events_pal/en_US/FREQ_DIV_en_US.xcos
.. _Event handling palette: Events_pal.html
.. _Interfacing function: freq_div.html#Interfacingfunction_freq_div
.. _Dialog box: freq_div.html#Dialogbox_freq_div
.. _Palette: freq_div.html#Palette_freq_div
.. _Default properties: freq_div.html#Defaultproperties_freq_div
.. _Description: freq_div.html#Description_freq_div


