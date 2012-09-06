


READAU_f
========

Read AU sound file



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Read AU sound file`_
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

Loads a sound file specified by the string *.au file, returning the
sampled data in y. The .au extension is appended if no extension is
given. Amplitude values are in the range [-1,+1]. auread supports
multichannel data in the following formats:


+ 8-bit mu-law
+ 8-, 16-, and 32-bit linear
+ Floating-point




Dialog box
~~~~~~~~~~






+ **Input file name** a character string defining the path of the
  file. Properties : Type 'str' of size 1
+ **Buffer size** To improve efficiency it is possible to buffer the
  input data. Read on the file is only done after each Buffer size call
  to the block. Properties : Type 'vec' of size 1
+ **Swap mode 0/1** With **Swap mode=1** the file is supposed to be
  coded in "little endian IEEE format" and data are swaped if necessary
  to match the IEEE format of the processor. If **Swap mode=0** then
  automatic bytes swap is disabled. Properties : Type 'vec' of size 1




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
+ **name of computational function:** readau




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Sources/READAU_f.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/readau.c (Type 2)


.. _Interfacing function: READAU_f.html#Interfacingfunction_READAU_f
.. _Read AU sound file: READAU_f.html
.. _Computational function: READAU_f.html#Computationalfunction_READAU_f
.. _Default properties: READAU_f.html#Defaultproperties_READAU_f
.. _Sources palette: Sources_pal.html
.. _Dialog box: READAU_f.html#Dialogbox_READAU_f
.. _Palette: READAU_f.html#Palette_READAU_f
.. _Description: READAU_f.html#Description_READAU_f


