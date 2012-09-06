


xs2gif
======

Export graphics to GIF.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xs2gif(win_num,file_name)
    xs2gif(fig,file_name)




Arguments
~~~~~~~~~

:win_num integer, id of the figure to export.
: :fig handle of the figure to export.
: :file_name string, name of the exported file.
:



Description
~~~~~~~~~~~

`xs2gif` exports the display of a graphic window into a GIF file.

To convert a sequence of "GIF" files to an animated GIF file one can
use the "convert" program for ImageMagic (http://www.imagemagick.org/)

For example if one has generated a sequence of Gif files named
`img*.gif` it is possible to build an animated Gif file (named
anim.gif) by


::

    convert -delay 10  img*.gif anim.gif




Examples
~~~~~~~~


::

    `scf`_(0);
    `plot2d`_();
    //GIF export
    xs2gif(0,'foo.gif');
    xs2gif(`gcf`_(),'foo.gif');




See Also
~~~~~~~~


+ `xs2bmp`_ Export graphics to BMP.
+ `xs2jpg`_ Export graphics to JPG.
+ `xs2png`_ Export graphics to PNG.
+ `xs2ppm`_ Export graphics to PPM.
+ `xs2eps`_ Export graphics to EPS.
+ `xs2pdf`_ Export graphics to PDF.
+ `xs2svg`_ Export graphics to SVG.
+ `xs2ps`_ Export graphics to PS.
+ `xs2emf`_ Export graphics to EMF (Only under Windows).


.. _xs2png: xs2png.html
.. _xs2bmp: xs2bmp.html
.. _xs2pdf: xs2pdf.html
.. _xs2jpg: xs2jpg.html
.. _xs2eps: xs2eps.html
.. _xs2ps: xs2ps.html
.. _xs2ppm: xs2ppm.html
.. _xs2emf: xs2emf.html
.. _xs2svg: xs2svg.html


