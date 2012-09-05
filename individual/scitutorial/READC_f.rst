


READC_f
=======

Read binary data



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Read binary data`_
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

This block allows user to read data in a C file. **Output record
selection** and **Time record Selection** allows the user to select
data among file records. Each call to the block advance one record in
the file.



Dialog box
~~~~~~~~~~






+ **Time record selection** an empty matrix or a positive integer. If
  an integer i is given the i th element of the read record is assumed
  to be the date of the output event. If empty no output event exists.
  Properties : Type 'vec' of size -1
+ **Outputs record selection** a vector of positive integer. ,The th
  element of the read record gives the value of output. Properties :
  Type 'vec' of size -1
+ **Input file name** a character string defining the path of the
  file. Properties : Type 'str' of size 1
+ **Input Format** a character string defining the format to use.
  Properties : Type 'str' of size 1
+ **Record size** The file is supposed to be formed by a sequence of
  data with same format. These data are organized in a sequence of
  record each of them containing Record size data. Properties : Type
  'vec' of size 1
+ **Buffer size** To improve efficiency it is possible to buffer the
  input data. Read on the file is only done after each Buffer size call
  to the block. Properties : Type 'vec' of size 1
+ **Initial record index** a scalar. This fixes the first record of
  the file to use. Properties : Type 'vec' of size 1
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
+ **name of computational function:** readc




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Sources/READC_f.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/readc.c (Type 2)


.. _Palette: READC_f.html#Palette_READC_f
.. _Sources palette: Sources_pal.html
.. _Read binary data: READC_f.html
.. _Default properties: READC_f.html#Defaultproperties_READC_f
.. _Description: READC_f.html#Description_READC_f
.. _Interfacing function: READC_f.html#Interfacingfunction_READC_f
.. _Dialog box: READC_f.html#Dialogbox_READC_f
.. _Computational function: READC_f.html#Computationalfunction_READC_f


