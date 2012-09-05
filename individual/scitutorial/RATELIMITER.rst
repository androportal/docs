


RATELIMITER
===========

Rate limiter



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Rate limiter`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `discontinuities palette`_




Description
~~~~~~~~~~~

The Rate Limiter block limits the first derivative of the signal
passing through it. The output changes no faster than the specified
limit.



Dialog box
~~~~~~~~~~






+ **max slope** The limit of the derivative of an increasing input
  signal. Properties : Type 'vec' of size 1
+ **min slope** The limit of the derivative of a decreasing input
  signal. Properties : Type 'vec' of size 1




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [1,1] / type 1**
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** ratelimiter




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Misc/RATELIMITER.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/ratelimiter.c (Type 4)


.. _discontinuities palette: discontinuities_pal.html
.. _Computational function: RATELIMITER.html#Computationalfunction_RATELIMITER
.. _Description: RATELIMITER.html#Description_RATELIMITER
.. _Dialog box: RATELIMITER.html#Dialogbox_RATELIMITER
.. _Default properties: RATELIMITER.html#Defaultproperties_RATELIMITER
.. _Interfacing function: RATELIMITER.html#Interfacingfunction_RATELIMITER
.. _Palette: RATELIMITER.html#Palette_RATELIMITER
.. _Rate limiter: RATELIMITER.html


