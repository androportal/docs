


CMAT3D
======

Matrix z values 3D viewer



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Matrix z values 3D viewer`_
  +

    + `Palette`_
    + `Description`_
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

CMAT3D is a scope that shows matrix values as z values on a xy grid.





Dialog box
~~~~~~~~~~






+ **Bounds Vector X (-1 for standard)** If you let -1 the x ticks
  would be between 0 and 1 else you can put your own vector. Properties
  : Type 'vec' of size -1.
+ **Bounds Vector Y (-1 for standard)** If you let -1 the x ticks
  would be between 0 and 1 else you can put your own vector. Properties
  : Type 'vec' of size -1.
+ **ColorMap** The colormap is a range color linked to the window
  output of the scope. You can put a jetcolormap or hotcolormap or
  graycolormap or your own (see colormap help). Properties : Must be a
  mx3 matrix and m = 3
+ **Zmin** Minimum value in Z values Properties : Type 'vec' of size
  1.
+ **Zmax** Maximum values in Z values Properties : Type 'vec' of size
  1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,-2] / type 1**
+ **number/sizes of activation inputs:** 1
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** cmat3d




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Sinks/CMAT3D.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/cmat3d.c (Type 4)




See also
~~~~~~~~


+ `CMATVIEW - Matrix Colormapped viewer`_


.. _Description: CMAT3D.html#Description_CMAT3D
.. _See also: CMAT3D.html#Seealso_CMAT3D
.. _Interfacing function: CMAT3D.html#Interfacingfunction_CMAT3D
.. _Default properties: CMAT3D.html#Defaultproperties_CMAT3D
.. _CMATVIEW - Matrix Colormapped viewer: CMATVIEW.html
.. _Computational function: CMAT3D.html#Computationalfunction_CMAT3D
.. _Sinks palette: Sinks_pal.html
.. _Palette: CMAT3D.html#Palette_CMAT3D
.. _Matrix z values 3D viewer: CMAT3D.html
.. _Dialog box: CMAT3D.html#Dialogbox_CMAT3D


