


RAND_m
======

Random generator



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Random generator`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `Sources palette`_




Description
~~~~~~~~~~~

This block is a random wave generator: each output component takes
piecewise constant random values. Every time an event is received on
the input event port, the outputs take new independent random values.

Output port size is given by the size of **A** and **B** matrices.



Dialog box
~~~~~~~~~~






+ **Datatype(1=real double 2=complex)** It indicates the type of the
  output. It support only the two types double (1) and complex (2). If
  we input another entry in this label Scicos will print the message
  "Datatype is not supported". Properties : Type 'vec' of size 1.
+ **flag** 0 or 1. 0 for uniform distribution on [A,A+B]. 1 for normal
  distribution. Properties : Type 'vec' of size 1.
+ **A** matrix Properties : Type 'mat' of size [-1,-2].
+ **B** matrix Properties : Type 'mat' of size [-1,-2].
+ **seed** matrix Seed value for a sequence of random number. First
  number is for the real part and the second for the imaginary part.
  Properties : Type 'mat' of size [1,2].




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 1
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** yes
+ **object discrete-time state:** no
+ **name of computational function:** rndblk_m




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Sources/RAND_m.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/rndblk_m.c
+ SCI/modules/scicos_blocks/src/c/rndblkz_m.c


.. _Computational function: RAND_m.html#Computationalfunction_RAND_m
.. _Description: RAND_m.html#Description_RAND_m
.. _Sources palette: Sources_pal.html
.. _Interfacing function: RAND_m.html#Interfacingfunction_RAND_m
.. _Dialog box: RAND_m.html#Dialogbox_RAND_m
.. _Random generator: RAND_m.html
.. _Palette: RAND_m.html#Palette_RAND_m
.. _Default properties: RAND_m.html#Defaultproperties_RAND_m


