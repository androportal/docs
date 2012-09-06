


whitecolormap
=============

completely white colormap



Calling Sequence
~~~~~~~~~~~~~~~~


::

    cmap=whitecolormap(n)




Arguments
~~~~~~~~~

:n integer >= 3, the colormap size.
: :cmap matrix with 3 columns `[R,G,B]`.
:



Description
~~~~~~~~~~~

This colormap is completely white



Sample
~~~~~~



Examples
~~~~~~~~


::

    f = `scf`_();
    `plot3d1`_();
    f.color_map = whitecolormap(32);




See Also
~~~~~~~~


+ `colormap`_ using colormaps
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
+ `wintercolormap`_ blue to green colormap


.. _wintercolormap: wintercolormap.html
.. _bonecolormap: bonecolormap.html
.. _springcolormap: springcolormap.html
.. _oceancolormap: oceancolormap.html
.. _hsvcolormap: hsvcolormap.html
.. _graycolormap: graycolormap.html
.. _pinkcolormap: pinkcolormap.html
.. _summercolormap: summercolormap.html
.. _coolcolormap: coolcolormap.html
.. _coppercolormap: coppercolormap.html
.. _jetcolormap: jetcolormap.html
.. _autumncolormap: autumncolormap.html
.. _rainbowcolormap: rainbowcolormap.html
.. _colormap: colormap.html
.. _hotcolormap: hotcolormap.html


