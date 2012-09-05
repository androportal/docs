


INTRP2BLK_f
===========

2D interpolation



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `2D interpolation`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `Lookup tables palette`_




Description
~~~~~~~~~~~

The output of this block is a function of the inputs obtained by
bilinear interpolation. This block has two scalar inputs and a single
scalar output. The and give respectively the coordinate and the
coordinate of the -th data point to be interpolated and its value.



Dialog box
~~~~~~~~~~






+ **X coord.** an n-vector (strictly increasing). Properties : Type
  'vec' of size -1
+ **Y coord.** an m-vector (strictly increasing). Properties : Type
  'vec' of size -1
+ **Z values** an matrix. Properties : Type 'mat' of size [-1,-1]




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [1,1] / type 1** **- port 2 :
  size [1,1] / type 1**
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** intrp2




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/NonLinear/INTRP2BLK_f.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/fortran/intrp2.f (Type 1)


.. _Default properties: INTRP2BLK_f.html#Defaultproperties_INTRP2BLK_f
.. _Lookup tables palette: Lookuptables_pal.html
.. _Computational function: INTRP2BLK_f.html#Computationalfunction_INTRP2BLK_f
.. _Description: INTRP2BLK_f.html#Description_INTRP2BLK_f
.. _2D interpolation: INTRP2BLK_f.html
.. _Palette: INTRP2BLK_f.html#Palette_INTRP2BLK_f
.. _Dialog box: INTRP2BLK_f.html#Dialogbox_INTRP2BLK_f
.. _Interfacing function: INTRP2BLK_f.html#Interfacingfunction_INTRP2BLK_f


