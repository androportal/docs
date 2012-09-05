


CMATVIEW
========

Matrix Colormapped viewer



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Matrix Colormapped viewer`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_
    + `Example`_
    + `See also`_





Palette
~~~~~~~


+ `Sinks palette`_




Description
~~~~~~~~~~~

CMATVIEW is a scope that shows matrix values on a colormapped grid.





Dialog box
~~~~~~~~~~






+ **ColorMap** The colormap is a range color linked to the window
  output of the scope. You can put a jetcolormap or hotcolormap or
  graycolormap or your own (see colormap help). Properties : Must be a
  mx3 matrix and m = 3
+ **Minimum level range** The minimum level range is the minimum value
  who comes in the regular input port. It would be linked to the 'cold
  value' of the colormap. Properties : A scalar
+ **Maximum level range** The maximum level range is the maximum value
  who comes in the regular input port. It would be linked to the 'hot
  value' of the colormap. Properties : A scalar




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
+ **name of computational function:** cmatview




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Sinks/CMATVIEW.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/cmatview.c (Type 4)




Example
~~~~~~~

` `_



See also
~~~~~~~~


+ `CMAT3D - Matrix z values 3D viewer`_


.. _Interfacing function: CMATVIEW.html#Interfacingfunction_CMATVIEW
.. _Default properties: CMATVIEW.html#Defaultproperties_CMATVIEW
.. _Palette: CMATVIEW.html#Palette_CMATVIEW
.. _Example: CMATVIEW.html#Example_CMATVIEW
.. _See also: CMATVIEW.html#Seealso_CMATVIEW
.. _Description: CMATVIEW.html#Description_CMATVIEW
.. _Matrix Colormapped viewer: CMATVIEW.html
.. _Computational function: CMATVIEW.html#Computationalfunction_CMATVIEW
.. _Dialog box: CMATVIEW.html#Dialogbox_CMATVIEW
.. _Sinks palette: Sinks_pal.html
.. _CMAT3D - Matrix z values 3D viewer: CMAT3D.html


