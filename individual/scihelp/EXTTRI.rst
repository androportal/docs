


EXTTRI
======

Triangular or Diagonal Extraction



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Triangular or Diagonal Extraction`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Example`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_
    + `See also`_





Palette
~~~~~~~


+ `Matrix operation palette`_




Description
~~~~~~~~~~~

The EXTTRI block extracts some elements from the input matrix u. The
size of the output matrix is the same that those of the input matrix.

When the **extraction type** parameter is set to:


+ **1** (Upper triangle): the block copies the elements on and above
  the main diagonal to an output matrix. The elements below the main
  diagonal are set to zero.
+ **2** (Lower triangle): the block copies the elements on and below
  the main diagonal to an output matrix. The elements above the main
  diagonal are set to zero.
+ **3** (Diagonal): the block copies the elements on the main diagonal
  to an output matrix. The elements above and below the main diagonal
  are set to zero.


Les fonctions équivalentes de EXTTRI dans Scilab sont respectivement
`triu(u)`_, `tril(u)`_ et `diag(u)`_





Dialog box
~~~~~~~~~~






+ **Datatype(1=real double 2=Complex)** It indicates the type of the
  output. It support only the two types double (1) and complex (2). If
  we input another entry in this label xcos will print the message
  "Datatype is not supported". Properties : Type 'vec' of size 1.
+ **extraction type (1=lower 2=upper 3=diagonal)** It indicates the
  form of the output matrix. It can be an upper triangle, a lower
  triangle or a diagonal matrix. Properties : Type 'vec' of size 1.




Example
~~~~~~~


::

    A=[1 2 3;4 5 6;7 8 9;10 11 12]
    If the extraction `type`_ is 2 then the output is
    B=[1 0 0;4 5 0;7 8 9;10 11 12]




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,-2] / type 1**
+ **regular outputs:** **- port 1 : size [-1,-2] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** extrilz




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/MatrixOp/EXTTRI.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/exttril.c
+ SCI/modules/scicos_blocks/src/c/exttriu.c
+ SCI/modules/scicos_blocks/src/c/extdiag.c
+ SCI/modules/scicos_blocks/src/c/exttrilz.c
+ SCI/modules/scicos_blocks/src/c/exttriuz.c
+ SCI/modules/scicos_blocks/src/c/extdiagz.c




See also
~~~~~~~~


+ `EXTRACT - Matrix Extractor (xcos Block)`_
+ `triu (Scilab function)`_
+ `tril (Scilab function)`_
+ `diag (Scilab function)`_


.. _Dialog box: EXTTRI.html#Dialogbox_EXTTRI
.. _Description: EXTTRI.html#Description_EXTTRI
.. _Matrix operation palette: Matrix_pal.html
.. _See also: EXTTRI.html#Seealso_EXTTRI
.. _tril (Scilab function): tril.html
.. _EXTRACT - Matrix Extractor (xcos Block): EXTRACT.html
.. _diag (Scilab function): diag.html
.. _triu (Scilab function): triu.html
.. _Interfacing function: EXTTRI.html#Interfacingfunction_EXTTRI
.. _Triangular or Diagonal Extraction: EXTTRI.html
.. _Default properties: EXTTRI.html#Defaultproperties_EXTTRI
.. _Computational function: EXTTRI.html#Computationalfunction_EXTTRI
.. _Palette: EXTTRI.html#Palette_EXTTRI
.. _Example: EXTTRI.html#Example_EXTTRI


