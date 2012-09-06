


xs2bmp
======

Export graphics to BMP.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xs2bmp(win_num, file_name)
    xs2bmp(fig, file_name)




Arguments
~~~~~~~~~

:win_num integer, id of the figure to export.
: :fig handle of the figure to export.
: :file_name string, name of the exported file.
:



Description
~~~~~~~~~~~

`xs2bmp` exports the display of a graphic window into a BMP file.



Examples
~~~~~~~~


::

    `scf`_(0)
    `plot2d`_()
    //BMP export
    xs2bmp(0,'foo.bmp');




See Also
~~~~~~~~


+ `xs2gif`_ Export graphics to GIF.
+ `xs2jpg`_ Export graphics to JPG.
+ `xs2png`_ Export graphics to PNG.
+ `xs2ppm`_ Export graphics to PPM.
+ `xs2eps`_ Export graphics to EPS.
+ `xs2pdf`_ Export graphics to PDF.
+ `xs2svg`_ Export graphics to SVG.
+ `xs2ps`_ Export graphics to PS.
+ `xs2emf`_ Export graphics to EMF (Only under Windows).


.. _xs2gif: xs2gif.html
.. _xs2png: xs2png.html
.. _xs2pdf: xs2pdf.html
.. _xs2jpg: xs2jpg.html
.. _xs2eps: xs2eps.html
.. _xs2ps: xs2ps.html
.. _xs2ppm: xs2ppm.html
.. _xs2emf: xs2emf.html
.. _xs2svg: xs2svg.html


