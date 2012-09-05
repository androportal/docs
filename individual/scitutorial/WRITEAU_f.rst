


WRITEAU_f
=========

Write AU sound file



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Write AU sound file`_
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

This block writes a sound file specified by the string *.au file. The
data should be arranged with one channel per column. Amplitude values
outside the range [-1,+1] are clipped prior to writing. auwrite
supports multichannel data for 8-bit mu-law and 8- and 16-bit linear
formats.



Dialog box
~~~~~~~~~~






+ **Buffer size** To improve efficiency it is possible to buffer the
  input data. read on the file is only done after each Buffer size call
  to the block. Properties : Type 'vec' of size 1
+ **Swap mode 0/1** With **Swap mode=1** the file is supposed to be
  coded in "little endian IEEE format" and data are swaped if necessary
  to match the IEEE format of the processor. If **Swap mode=0** then
  automatic bytes swap is disabled. Properties : Type 'vec' of size 1




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 1
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** yes
+ **object discrete-time state:** no
+ **name of computational function:** writeau




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Sinks/WRITEAU_f.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/writeau.c (Type 2)


.. _Palette: WRITEAU_f.html#Palette_WRITEAU_f
.. _Dialog box: WRITEAU_f.html#Dialogbox_WRITEAU_f
.. _Computational function: WRITEAU_f.html#Computationalfunction_WRITEAU_f
.. _Default properties: WRITEAU_f.html#Defaultproperties_WRITEAU_f
.. _Interfacing function: WRITEAU_f.html#Interfacingfunction_WRITEAU_f
.. _Description: WRITEAU_f.html#Description_WRITEAU_f
.. _Sinks palette: Sinks_pal.html
.. _Write AU sound file: WRITEAU_f.html


