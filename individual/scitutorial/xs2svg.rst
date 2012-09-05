


xs2svg
======

Export graphics to SVG.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xs2svg(win_num, file_name [,orientation])
    xs2svg(fig, file_name [,orientation])




Arguments
~~~~~~~~~

:win_num integer, id of the figure to export.
: :fig handle of the figure to export.
: :file_name string, name of the exported file.
: :orientation optional character, with possible values 'portrait' or
  'landscape'. The default value is 'portrait'.
:



Description
~~~~~~~~~~~

`xs2svg` exports the display of a graphic window into a SVG file.



Examples
~~~~~~~~


::

    `scf`_(0)
    `plot2d`_()
    //SVG export
    xs2svg(0,'foo.svg')
    xs2svg(`gcf`_(),'foo.svg');




See Also
~~~~~~~~


+ figure_size property
+ `toprint`_ Send text or figure to the printer.
+ `printfigure`_ Opens a printing dialog and prints a figure.
+ `xs2bmp`_ Export graphics to BMP.
+ `xs2gif`_ Export graphics to GIF.
+ `xs2jpg`_ Export graphics to JPG.
+ `xs2png`_ Export graphics to PNG.
+ `xs2ppm`_ Export graphics to PPM.
+ `xs2eps`_ Export graphics to EPS.
+ `xs2pdf`_ Export graphics to PDF.
+ `xs2ps`_ Export graphics to PS.
+ `xs2emf`_ Export graphics to EMF (Only under Windows).


.. _xs2gif: xs2gif.html
.. _xs2png: xs2png.html
.. _xs2bmp: xs2bmp.html
.. _xs2pdf: xs2pdf.html
.. _xs2jpg: xs2jpg.html
.. _xs2eps: xs2eps.html
.. _toprint: toprint.html
.. _printfigure: printfigure.html
.. _xs2ps: xs2ps.html
.. _xs2ppm: xs2ppm.html
.. _xs2emf: xs2emf.html


