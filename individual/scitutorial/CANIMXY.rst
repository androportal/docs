


CANIMXY
=======

y=f(x) animated viewer



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `y=f(x) animated viewer`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_
    + `See also`_





Palette
~~~~~~~


+ `Sinks palette`_




Description
~~~~~~~~~~~

This block realizes the visualization of the evolution of the two
regular input signals by drawing the second input as a function of the
first at instants of events on the event input port. When a point is
drawn on screen it stays until the buffer length is reached. This
scope is useful to make simple animations.





Dialog box
~~~~~~~~~~






+ **Number of Curves** Set the number of curves. Properties : Type
  'vec' of size 1
+ **color** an integer. It is the color number ( ) or marker type ( )
  used to draw the evolution of the input port signal. See **xset()**
  for color (dash type) definitions. Properties : Type 'vec' of size 1
+ **line or mark size** an integer. Properties : Type 'vec' of size 1
+ **Output window number** The number of graphic window used for the
  display. It is often good to use high values to avoid conflict with
  palettes and Super Block windows. If you have more than one scope,
  make sure they do not have the same window numbers (unless
  superposition of the curves is desired). Properties: Type 'vec' of
  size 1
+ **Output window position** A 2 element vector specifying the
  coordinates of the upper left corner of the graphic window. Answer []
  for default window position. Properties: Type 'vec' of size -1
+ **Output window sizes** A 2 element vector specifying the width and
  height of the graphic window. Answer [] for default window dimensions.
  Properties: Type 'vec' of size -1
+ **Xmin** Minimum value of the first input: used to set up the X-axis
  of the plot in the graphics window. Properties: Type 'vec' of size 1
+ **Xmax** Maximum value of the first input: used to set up the X-axis
  of the plot in the graphics window. Properties: Type 'vec' of size 1
+ **Ymin** Minimum value of the second input: used to set up the
  Y-axis of the plot in the graphics window. Properties: Type 'vec' of
  size 1
+ **Ymax** Maximum value of the second input; used to set up the
  Y-axis of the plot in the graphics window. Properties: Type 'vec' of
  size 1
+ **Buffer size** An integer value. In order to minimize the number of
  graphics outputs, data may buffered. Properties: Type 'vec' of size 1




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [1,1] / type 1** **- port 2 :
  size [1,1] / type 1**
+ **number/sizes of activation inputs:** 1
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** canimxy




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Sinks/CANIMXY.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/canimxy.c (Type 4)




See also
~~~~~~~~


+ `CANIMXY3D - z=f(x,y) animated viewer`_




Animated point viewer example
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
` `_
.. _Default properties: CANIMXY.html#Defaultproperties_CANIMXY
.. _CANIMXY3D - z=f(x,y) animated viewer: CANIMXY3D.html
.. _Dialog box: CANIMXY.html#Dialogbox_CANIMXY
.. _Computational function: CANIMXY.html#Computationalfunction_CANIMXY
.. _Interfacing function: CANIMXY.html#Interfacingfunction_CANIMXY
.. _y=f(x) animated viewer: CANIMXY.html
.. _See also: CANIMXY.html#Seealso_CANIMXY
.. _Sinks palette: Sinks_pal.html
.. _Description: CANIMXY.html#Description_CANIMXY
.. _Palette: CANIMXY.html#Palette_CANIMXY


