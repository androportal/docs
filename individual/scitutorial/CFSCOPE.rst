


CFSCOPE
=======

Floating point scope



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Floating point scope`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `Sinks palette`_




Description
~~~~~~~~~~~

This is a floating scope block.





Dialog box
~~~~~~~~~~






+ **Color** a vector of integers. The i-th element is the color number
  ( ) or dash type ( ) used to draw the evolution of the i-th input port
  signal. See **plot2d** for color (dash type) definitions. Properties :
  Type 'vec' of size 8
+ **Output window number** The number of graphic window used for the
  display. It is often good to use high values to avoid conflict with
  palettes and Super Block windows. If default value is used **(1)** ,
  Xcos define the output window number. Properties : Type 'vec' of size
  1
+ **Output window position** a 2 vector specifying the coordinates of
  the upper left corner of the graphic window. Answer [] for default
  window position. Properties : Type 'vec' of size -1
+ **Output window sizes** a 2 vector specifying the coordinates of the
  upper left corner of the graphic window. Answer [] for default window
  position. Properties : Type 'vec' of size -1
+ **Ymin** Minimum values of the input; used to set up the Y-axis of
  the plot in the graphics window. Properties : Type 'vec' of size -1
+ **Ymax** Maximum values of the input; used to set up the Y-axis of
  the plot in the graphics window. Properties : Type 'vec' of size 1
+ **Refresh period** Maximum value on the X-axis (time). The plot is
  redrawn when time reaches a multiple of this value. Properties : Type
  'vec' of size
+ **Buffer size** To improve efficiency it is possible to buffer the
  input data. The drawing is only done after each **Buffer size** call
  to the block. Properties : Type 'vec' of size 1
+ **Links to view** This parameter allows you to display the output of
  specified link. Properties : Type 'vec' of size 1




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **number/sizes of activation inputs:** 1
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** cfscope




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Sinks/CFSCOPE.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/cfscope.c (Type 4)


.. _Description: CFSCOPE.html#Description_CFSCOPE
.. _Interfacing function: CFSCOPE.html#Interfacingfunction_CFSCOPE
.. _Dialog box: CFSCOPE.html#Dialogbox_CFSCOPE
.. _Palette: CFSCOPE.html#Palette_CFSCOPE
.. _Sinks palette: Sinks_pal.html
.. _Default properties: CFSCOPE.html#Defaultproperties_CFSCOPE
.. _Floating point scope: CFSCOPE.html
.. _Computational function: CFSCOPE.html#Computationalfunction_CFSCOPE


