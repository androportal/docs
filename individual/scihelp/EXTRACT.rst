


EXTRACT
=======

Matrix extractor



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Matrix Extractor`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Example`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_
    + `Example`_
    + `See also`_





Palette
~~~~~~~


+ `Matrix operation palette`_




Description
~~~~~~~~~~~

The EXTRACT block extracts some elements from the input matrix. The
size of the output depends on the number of rows and number of columns
to extract.

The elements of the parameters **Lines to extract** and **Columns to
extract** specify respectively the indexes of the lines and the
columns to be extracted.

The writing of these parameters obeys to the rules of extraction (see
`extraction`_), in particular you can give a range of indexes with the
colon operator (:).





Dialog box
~~~~~~~~~~






+ **Datatype (1=real double 2=Complex)** It indicates the type of the
  output. It support only the two types double (1) and complex (2). If
  we input another entry in this label xcos will print the message
  "Datatype is not supported". Properties : Type 'vec' of size 1.
+ **Lines to extract** A vector indicating the indexes of lines to be
  extracted. Properties : Type 'mat' of size [1,-1].
+ **Columns to extract** A vector indicating the indexes of columns to
  be extracted.. Properties : Type 'mat' of size [1,-1].




Example
~~~~~~~


::

    A=[1 2 3;4 5 6;7 8 9]
    If the "Lines to extract" is [1 2] `and`_ the "Column to extract" is [1 3] then the output is
    B=[1 3;4 6]




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,-2] / type 1**
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** extract




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/MatrixOp/EXTRACT.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/extract.c
+ SCI/modules/scicos_blocks/src/c/extractz.c




Example
~~~~~~~

` `_



See also
~~~~~~~~


+ `EXTTRI - Triangular or Diagonal extraction (xcos Block)`_


.. _Matrix operation palette: Matrix_pal.html
.. _extraction: extraction.html
.. _Example: EXTRACT.html
.. _Example: EXTRACT.html#Example_EXTRACT
.. _Palette: EXTRACT.html#Palette_EXTRACT
.. _Interfacing function: EXTRACT.html#Interfacingfunction_EXTRACT
.. _Default properties: EXTRACT.html#Defaultproperties_EXTRACT
.. _Dialog box: EXTRACT.html#Dialogbox_EXTRACT
.. _Computational function: EXTRACT.html#Computationalfunction_EXTRACT
.. _EXTTRI - Triangular or Diagonal extraction (xcos Block): EXTTRI.html
.. _See also: EXTRACT.html#Seealso_EXTRACT
.. _Description: EXTRACT.html#Description_EXTRACT


