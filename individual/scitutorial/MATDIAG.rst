


MATDIAG
=======

Create Diagonal Matrix



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Create Diagonal Matrix`_
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

The MATDIAG block create a diagonal matrix from a 1D vector. If the
input is a Mx1 vector than the output is an MxM matrix.

The equivalent function of MATDIAG in Scilab is `diag(vm)`_ with vm a
column vector.





Dialog box
~~~~~~~~~~






+ **Datatype (1=real double 2=Complex)** It indicates the type of the
  output. It support only the two types double (1) and complex (2). If
  we input another entry in this label xcos will print the message
  "Datatype is not supported". Properties : Type 'vec' of size 1.




Example
~~~~~~~


::

    if the `input`_ of the block is U=ones(5,1) then the output is:
    y=[1 0 0 0 0;0 1 0 0 0;0 0 1 0 0;0 0 0 1 0;0 0 0 0 1]




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,1] / type 1**
+ **regular outputs:** **- port 1 : size [-1,-1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** mat_diag




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/MatrixOp/MATDIAG.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/mat_diag.c
+ SCI/modules/scicos_blocks/src/c/matz_diag.c




See also
~~~~~~~~


+ `EXTTRI - Triangular or Diagonal extraction (xcos Block)`_
+ `diag (Scilab function)`_


.. _Computational function: MATDIAG.html#Computationalfunction_MATDIAG
.. _Matrix operation palette: Matrix_pal.html
.. _diag (Scilab function): diag.html
.. _Description: MATDIAG.html#Description_MATDIAG
.. _Dialog box: MATDIAG.html#Dialogbox_MATDIAG
.. _Example: MATDIAG.html
.. _EXTTRI - Triangular or Diagonal extraction (xcos Block): EXTTRI.html
.. _See also: MATDIAG.html#Seealso_MATDIAG
.. _Default properties: MATDIAG.html#Defaultproperties_MATDIAG
.. _Palette: MATDIAG.html#Palette_MATDIAG
.. _Interfacing function: MATDIAG.html#Interfacingfunction_MATDIAG


