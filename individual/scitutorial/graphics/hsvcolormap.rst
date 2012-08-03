====
"hsvcolormap"
====

Scilab Function Last update : 13/06/2005
**hsvcolormap** - Hue-saturation-value colormap



Calling Sequence
~~~~~~~~~~~~~~~~

cmap = hsvcolormap(n)




Parameters
~~~~~~~~~~


+ **n** : integer >= 1, the colormap size.
+ **cmap** : matrix with 3 columns **[R,G,B]** .




Description
~~~~~~~~~~~
**hsvcolormap** computes a colormap with **n** colors. This colormap
varies the hue component of the hsv color model. The colors begin with
red, pass through yellow, green, cyan, blue, magenta, and return to
red. The map is particularly useful for displaying periodic functions.


Examples
~~~~~~~~


::

    
        t=[0:0.1:2*%pi]'; z=sin(t)*cos(t'); 
        f=gcf();f.color_map=hsvcolormap(64);
         plot3d1(t,t,z,35,45,"X@Y@Z",[-2,2,2])
      




Authors
~~~~~~~

**Serge Steer** INRIA




