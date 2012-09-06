


colormap
========

using colormaps



Description
~~~~~~~~~~~

A colormap `cmap` is defined by a m x 3 matrix. m is the number of
colors. Color number i is given as a 3-uple `cmap(i,1)`, `cmap(i,2)`
`cmap(i,3)` corresponding respectively to red, green and blue
intensity between 0 and 1.

At the beginning, 32 colors are defined in the colormap. You can
change the colormap of a figure by using `set(f,"color_map",cmap)`
where `f` is the handle of the figure.

Each color in the colormap has an id you have to use to specify color
in most plot functions. To see the ids, use function `getcolor`_.

The functions `hotcolormap`_, `jetcolormap`_ and `graycolormap`_
provide colormaps with continuous variation of the colors.

You can get the default colormap by `cmap=get(sdf(),"color_map")`.



Examples
~~~~~~~~


::

    n=64;
    r=`linspace`_(0,1,n)';
    g=`linspace`_(1,0,n)';
    b=`ones`_(r);
    cmap=[r g b];
    f=`gcf`_(); f.color_map=cmap;
    `plot3d1`_()
    f.color_map=`get`_(`sdf`_(),"color_map");




See Also
~~~~~~~~


+ `autumncolormap`_ red through orange to yellow colormap
+ `bonecolormap`_ gray colormap with a light blue tone
+ `coolcolormap`_ cyan to magenta colormap
+ `coppercolormap`_ black to a light copper tone colormap
+ `graycolormap`_ linear gray colormap
+ `hotcolormap`_ red to yellow colormap
+ `hsvcolormap`_ Hue-saturation-value colormap
+ `jetcolormap`_ blue to red colormap
+ `oceancolormap`_ linear blue colormap
+ `pinkcolormap`_ sepia tone colorization on black and white images
+ `rainbowcolormap`_ red through orange, yellow, green,blue to violet
  colormap
+ `springcolormap`_ magenta to yellow colormap
+ `summercolormap`_ green to yellow colormap
+ `whitecolormap`_ completely white colormap
+ `wintercolormap`_ blue to green colormap
+ `color`_ returns the color id of a color
+ `getcolor`_ opens a dialog to show colors in the current colormap




Sample
~~~~~~

.. _wintercolormap: wintercolormap.html
.. _color: color.html
.. _hotcolormap: hotcolormap.html
.. _springcolormap: springcolormap.html
.. _whitecolormap: whitecolormap.html
.. _oceancolormap: oceancolormap.html
.. _hsvcolormap: hsvcolormap.html
.. _graycolormap: graycolormap.html
.. _bonecolormap: bonecolormap.html
.. _pinkcolormap: pinkcolormap.html
.. _summercolormap: summercolormap.html
.. _coolcolormap: coolcolormap.html
.. _coppercolormap: coppercolormap.html
.. _jetcolormap: jetcolormap.html
.. _autumncolormap: autumncolormap.html
.. _rainbowcolormap: rainbowcolormap.html
.. _getcolor: getcolor.html


