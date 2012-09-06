


xs2ppm
======

Export graphics to PPM.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xs2ppm(win_num, file_name)
    xs2ppm(fig, file_name)




Arguments
~~~~~~~~~

:win_num integer, id of the figure to export.
: :fig handle of the figure to export.
: :file_name string, name of the exported file.
:



Description
~~~~~~~~~~~

`xs2ppm` exports the display of a graphic window into a PPM file.



Examples
~~~~~~~~


::

    `scf`_(0)
    `plot2d`_()
    //PPM export
    filename='foo.ppm';
    xs2ppm(0,filename);




See Also
~~~~~~~~


+ `xs2bmp`_ Export graphics to BMP.
+ `xs2gif`_ Export graphics to GIF.
+ `xs2jpg`_ Export graphics to JPG.
+ `xs2png`_ Export graphics to PNG.
+ `xs2eps`_ Export graphics to EPS.
+ `xs2pdf`_ Export graphics to PDF.
+ `xs2svg`_ Export graphics to SVG.
+ `xs2ps`_ Export graphics to PS.
+ `xs2emf`_ Export graphics to EMF (Only under Windows).


.. _xs2gif: xs2gif.html
.. _xs2png: xs2png.html
.. _xs2bmp: xs2bmp.html
.. _xs2pdf: xs2pdf.html
.. _xs2jpg: xs2jpg.html
.. _xs2eps: xs2eps.html
.. _xs2ps: xs2ps.html
.. _xs2emf: xs2emf.html
.. _xs2svg: xs2svg.html


