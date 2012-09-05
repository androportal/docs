


CEVENTSCOPE
===========

Activation scope



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Activation scope`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `Event handling palette`_




Description
~~~~~~~~~~~

This block realizes the visualization of the input event signals.





Dialog box
~~~~~~~~~~






+ **Number of event inputs** an integer giving the number of event
  input ports colors : a vector of integers. The i-th element is the
  color number ( ) or dash type ( ) used to draw the evolution of the
  i-th input port signal. See **xset** for color (dash type)
  definitions. Properties : Type 'vec' of size 1
+ **colors c** an integer. It is the color number ( ) or dash type ( )
  used to draw the evolution of the input port signal. See **plot2d**
  for color (dash type) definitions. Properties : Type 'vec' of size -1
+ **Output window number** The number of graphic window used for the
  display. It is often good to use high values to avoid conflict with
  palettes and Super Block windows. If you have more than one scope,
  make sure they do not have the same window numbers (unless
  superposition of the curves is desired). Output window position : a 2
  vector specifying the coordinates of the upper left corner of the
  graphic window. Answer [] for default window position. Properties :
  Type 'vec' of size 1
+ **Output window position** Properties : Type 'vec' of size -1
+ **Output window sizes** a 2 vector specifying the width and height
  of the graphic window. Answer [] for default window dimensions.
  Properties : Type 'vec' of size -1
+ **Refresh period** Maximum value on the X-axis (time). The plot is
  redrawn when time reaches a multiple of this value. Properties : Type
  'vec' of size 1




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
+ **name of computational function:** cevscpe




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Sinks/CEVENTSCOPE.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/cevscpe.c (Type 4)


.. _Event handling palette: Events_pal.html
.. _Interfacing function: CEVENTSCOPE.html#Interfacingfunction_CEVENTSCOPE
.. _Computational function: CEVENTSCOPE.html#Computationalfunction_CEVENTSCOPE
.. _Description: CEVENTSCOPE.html#Description_CEVENTSCOPE
.. _Palette: CEVENTSCOPE.html#Palette_CEVENTSCOPE
.. _Dialog box: CEVENTSCOPE.html#Dialogbox_CEVENTSCOPE
.. _Default properties: CEVENTSCOPE.html#Defaultproperties_CEVENTSCOPE
.. _Activation scope: CEVENTSCOPE.html


