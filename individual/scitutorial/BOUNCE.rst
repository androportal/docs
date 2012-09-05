


BOUNCE
======

Balls coordinates generator



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Balls coordinates generator`_
  +

    + `Palette`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `Demonstrations blocks palette`_




Dialog box
~~~~~~~~~~






+ **Mass** The parameter description 1. Properties : Type 'vec' of
  size -1.
+ **Radius** The parameter description 2. Properties : Type 'vec' of
  size -1.
+ **[xmin,xmax,ymin,ymax]** The parameter description 3. Properties :
  Type 'vec' of size -1.
+ **xpos** The parameter description 4. Properties : Type 'vec' of
  size -1.
+ **xdpos** The parameter description 5. Properties : Type 'vec' of
  size -1.
+ **ypos** The parameter description 6. Properties : Type 'vec' of
  size -1.
+ **ydpos** The parameter description 7. Properties : Type 'vec' of
  size -1.
+ **g (gravity)** The parameter description 8. Properties : Type 'vec'
  of size 1.
+ **C (aerodynamic coeff** The parameter description 9. Properties :
  Type 'vec' of size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** yes
+ **direct-feedthrough:** no
+ **zero-crossing:** yes
+ **mode:** no
+ **regular outputs:** **- port 1 : size [2,1] / type 1** **- port 2 :
  size [2,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** yes
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** bounce_ball




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Misc/BOUNCE.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/bounce_ball.c (Type 4)


.. _Palette: BOUNCE.html#Palette_BOUNCE
.. _Balls coordinates generator: BOUNCE.html
.. _Dialog box: BOUNCE.html#Dialogbox_BOUNCE
.. _Demonstrations blocks palette: Demonstrationsblocks_pal.html
.. _Interfacing function: BOUNCE.html#Interfacingfunction_BOUNCE
.. _Default properties: BOUNCE.html#Defaultproperties_BOUNCE
.. _Computational function: BOUNCE.html#Computationalfunction_BOUNCE


