


WFILE_f
=======

Write to output file



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Write to output file`_
  +

    + `Palette`_
    + `Description`_
    + `Data types`_
    + `Dialog box`_
    + `Default properties`_
    + `Example`_
    + `Interfacing function`_
    + `Computational function`_
    + `See also`_





Palette
~~~~~~~


+ `Sinks palette`_




Description
~~~~~~~~~~~

This block allows user to save data in a file with the name defined
with the **Output File Name** parameter, in text formatted mode or in
binary mode.

The file is a sequence of records. Each record has a length **Output
Size** `+ 1` and the structure shown below:



where the first field is the date of the event received on the
activation input of the block during the simulation and other fields
the regular input data. Each call to the bloc writes a record in the
file.

The **Output Format** parameter gives the record format.


+ For a binary file, this parameter is an empty string.
+ For a text file, this parameter is a string of format (Fortran
  syntax) enclosed by parentheses.




Data types
~~~~~~~~~~


+ Input: a scalar or a column vector of length **Input Size**.




Dialog box
~~~~~~~~~~






+ **Input Size** A scalar, the size of the input column vector.
  Properties : Type 'vec' of size 1.
+ **Output File Name** A character string defining the path and the
  file name of the file to be written. The block support file name
  expansion and you can use environment variables like *HOME* in the
  path, by example *"HOME/my_datas/foo.datas"*. Without file path, the
  file is writen in the directory defined by the *PWD* variable. The
  directory path must exist, otherwise you will be prompted by an error
  message. Properties : Type 'str' of size 1.
+ **Output Format** A character string defining the Fortran format to
  use or nothing for an unformatted (binary) write. If given, the format
  must began by a left parenthesis and end by a right parenthesis.
  Example: *(10e3)* Properties : Type 'str' of size 1.
+ **Buffer Size** To improve efficiency it is possible to buffer the
  input data. Data writing on the file is only done after the filling of
  the buffer and at the end of simulation. Properties : Type 'vec' of
  size 1.




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
+ **name of computational function:** writef




Example
~~~~~~~

In this example the block is used to record the output and its inverse
of the sine wave generator. A multiplexer form the input vector of the
WFILE_f block which record the data in the file
*"TMPDIR/wfile_f.text"*. Then you can read these data with the block
`RFILE_f`_. `Open this example in Xcos`_.



*After the simulation* of this example, you can see the contents of
the file with *Scinotes* with the following command:




::

    `scinotes`_(TMPDIR + "/wfile_f.txt")




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ `SCI/modules/scicos_blocks/macros/Sinks/WFILE_f.sci`_




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/fortran/writef.f (Type 0)




See also
~~~~~~~~


+ `RFILE_f`_ Read from input file
+ `READC_f`_ Read binary data
+ `WRITEC_f`_ Write to C binary file


.. _Open this example in Xcos: nullscilab.xcos/xcos/examples/sinks_pal/en_US/wfile_f_en_US.xcos
.. _See also: WFILE_f.html#Seealso_WFILE_f
.. _Data types: WFILE_f.html#Datatype_WFILE_f
.. _READC_f: READC_f.html
.. _SCI/modules/scicos_blocks/macros/Sinks/WFILE_f.sci: nullscilab.scinotes/scicos_blocks/macros/Sinks/WFILE_f.sci
.. _Write to output file: WFILE_f.html
.. _WRITEC_f: WRITEC_f.html
.. _Example: WFILE_f.html#Example_WFILE_f
.. _RFILE_f: RFILE_f.html
.. _Description: WFILE_f.html#Description_WFILE_f
.. _Dialog box: WFILE_f.html#Dialogbox_WFILE_f
.. _Interfacing function: WFILE_f.html#Interfacingfunction_WFILE_f
.. _Palette: WFILE_f.html#Palette_WFILE_f
.. _Computational  function: WFILE_f.html#Computationalfunction_WFILE_f
.. _Default properties: WFILE_f.html#Defaultproperties_WFILE_f
.. _Sinks palette: Sinks_pal.html


