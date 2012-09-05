


WRITEC_f
========

Write to C binary file



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Write to C binary file`_
  +

    + `Palette`_
    + `Description`_
    + `Data types`_
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

This block allows to user to write data in a C binary file with the
name defined by the string **Output File Name**. The file is a
sequence of records. Each record has the length fixed by the parameter
**Input Size** and the structure shown below:



where the block inputs are numbered from top to bottom.

The record fields must contains data of the same type defined by the
parameter **Output Format**.

Each event on the activation input of the bloc writes a record in the
file. Note that contrary in `WFILE_f`_, the event dates are not
recorded.



Data types
~~~~~~~~~~


+ Input: a scalar or a column vector of size **Input Size**.




Dialog box
~~~~~~~~~~






+ **Input Size** A scalar, the size of the input column vector.
  Properties : Type 'vec' of size 1
+ **Output File Name** A character string defining the path and the
  file name of the file to be write. The block support file name
  expansion and you can use environment variables like *HOME* in the
  path, by example *"HOME/my_data/foo.data"*. Without file path, the
  file is wrote in the directory defined by the *PWD* variable. The file
  path must exist, otherwise you will be prompted by an error message.
  Properties : Type 'str' of size 1
+ **Output Format** A character string defining the format to use. The
  following string "l", "i", "s", "ul", "ui", "us", "d", "f", "c", "uc"
  are used respectively to write int32, int16, int8, uint32, uint16,
  uint8, double, float, char or unsigned char data type. You must use
  the same format when you read the file with `READC_f`_. Properties :
  Type 'str' of size 1
+ **Buffer size** To improve efficiency it is possible to buffer the
  input data. Data writing on the file is only done when the buffer is
  full. Properties : Type 'vec' of size 1
+ **Swap Mode (0:No, 1:Yes)** Endian IEEE format

    + **0**: automatic bytes swap is disabled.
    + **1**: the file is supposed to be coded in "little endian IEEE
      format" and data are swapped if necessary to match the IEEE format of
      the processor.
  Properties : Type 'vec' of size 1




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
+ **name of computational function:** writec




Example
~~~~~~~

In this example the block is used to record the output of the sine
wave generator. To record at the same time, the time events, we use a
TIME_f block and a multiplexer to form the input vector of the
WRITEC_f block which record the data in the file
*"TMPDIR/writec_f.data"*. Then you can read these data with the block
`READC_f`_. `Open this example in Xcos`_ .





Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ `SCI/modules/scicos_blocks/macros/Sinks/WRITEC_f.sci`_




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/writec.c (Type 2)




See also
~~~~~~~~


+ `READC_f`_ Read binary data
+ `RFILE_f`_ Read from input file
+ `WFILE_f`_ Write to output file


.. _SCI/modules/scicos_blocks/macros/Sinks/WRITEC_f.sci: nullscilab.scinotes/scicos_blocks/macros/Sinks/WRITEC_f.sci
.. _READC_f: READC_f.html
.. _Open this example in Xcos: nullscilab.xcos/xcos/examples/sinks_pal/en_US/writec_f_en_US.xcos
.. _Description: WRITEC_f.html#Description_WRITEC_f
.. _Write to C binary file: WRITEC_f.html
.. _WFILE_f: WFILE_f.html
.. _RFILE_f: RFILE_f.html
.. _Interfacing function: WRITEC_f.html#Interfacingfunction_WRITEC_f
.. _Dialog box: WRITEC_f.html#Dialogbox_WRITEC_f
.. _Computational function: WRITEC_f.html#Computationalfunction_WRITEC_f
.. _Palette: WRITEC_f.html#Palette_WRITEC_f
.. _See also: WRITEC_f.html#Seealso_WRITEC_f
.. _Default properties: WRITEC_f.html#Defaultproperties_WRITEC_f
.. _Sinks palette: Sinks_pal.html
.. _Data types: WRITEC_f.html#Datatype_WRITEC_f


